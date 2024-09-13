#include "../h/Sem.hpp"


void Sem::block(){

    TCB *old = TCB::running;
    old->setBlocked(true);
    this->blockedThreads.addLast(old);
    TCB::running = Scheduler::get();
    TCB::yield(old, TCB::running);

}

void Sem::deblock(){
    TCB* t = this->blockedThreads.removeFirst();
    t->setBlocked(false);
    Scheduler::put(t);
}

int Sem::sem_open(sem_t *handle, unsigned int init) {
    Sem* sem = new Sem((int)(init));
    if (sem == nullptr) {
        return -1;
    }
    *handle = sem;
    return 0;
}

int Sem::sem_close(sem_t handle) {
    if (!handle) return -1;
    while (handle->blockedThreads.peekFirst()) {
        handle->deblock();
    }
    delete handle;
    return 0;
}

int Sem::sem_wait(sem_t handle) {
    if (!handle) return -1;
    handle->count--;
    if (handle->count<0) {
        handle->block();

        if (!handle) return -1;
    }
    return 0;
}

int Sem::sem_signal(sem_t handle){
    if (handle == nullptr) return -1;
    if (++handle->count <= 0) handle->deblock();
    return 0;
}

int Sem::sem_trywait(sem_t handle) {
    if (!handle) return -1;
    if (handle->count>0) return sem_wait(handle);
    return 0;
}

void *Sem::operator new(size_t size) {
    size_t numOfBlocks=(size + sizeof(MemoryAllocator::FullBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    return MemoryAllocator::mem_alloc(numOfBlocks);
}

void Sem::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
}