#include "../h/Scheduler.hpp"


List<TCB> Scheduler::ready;

TCB* Scheduler::get(){
    return ready.removeFirst();
}

void Scheduler::put(TCB *thread){
    ready.addLast(thread);
}

void *Scheduler::operator new(size_t size) {
    size_t numOfBlocks=(size + sizeof(MemoryAllocator::FullBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    return MemoryAllocator::mem_alloc(numOfBlocks);
}

void Scheduler::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
}