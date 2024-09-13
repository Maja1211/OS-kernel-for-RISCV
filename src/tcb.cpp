#include "../h/tcb.hpp"

int TCB::id = 0;
TCB *TCB::running = nullptr;

TCB::TCB(body routine, void* arg, void* stack)
        : t_ID(++id), routine(routine), arg(arg), finished(false), blocked(false) {

    this->stack = (routine != nullptr) ? new uint64[DEFAULT_STACK_SIZE] : nullptr;

    this->context = {
            (uint64)&TCB::threadWrapper,
            (routine != nullptr) ? (uint64)&this->stack[DEFAULT_STACK_SIZE] : 0
    };
}

void *TCB::operator new(size_t size) {
    size_t numOfBlocks=(size + sizeof(MemoryAllocator::FullBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    return MemoryAllocator::mem_alloc(numOfBlocks);
}

void TCB::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
}

void TCB::dispatch(){
    TCB *old=running;
    if (!running->isFinished() && !running->isBlocked()) {
        Scheduler::put(old);
    }
    if (running->isFinished()) delete running;
    running=Scheduler::get();
    /*if(old!=running)*/ yield(old, running);
}

void TCB::yield(TCB* oldRunning, TCB* newRunning) {

    Riscv::push();
    contextSwitch(&oldRunning->context, &running->context);
    Riscv::pop();
}

int TCB::createThread(TCB **handle, body routine, void *arg, void *stack)  {
    if (!(*handle = new TCB(routine, arg, stack))) {
        return -1;
    }
    if (routine) {
        Scheduler::put(*handle);
    }
    return 0;
}

int TCB::threadExit() {
    if(!running || !running->isFinished()) return -1;
    thread_dispatch();
    return 0;
}

void TCB::threadWrapper() {
    if (running->routine) {
        Riscv::popSppSpie();
        running->routine(running->arg);
        running->setFinished(true);
    }
    TCB::threadExit();
}


