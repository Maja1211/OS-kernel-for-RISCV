#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/SyscallC.hpp"
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"

thread_t mainThread;
thread_t userMainThread;

extern void userMain();

void userWrapper(void*) {
    userMain();
}

int main(){

    Riscv::writeStvec((uint64)&Riscv::supervisorTrap);
    MemoryAllocator::mem_init();

    thread_create(&mainThread, nullptr, nullptr); // main
    TCB::running = mainThread;

    thread_create(&userMainThread, userWrapper, nullptr);

    while (!userMainThread->isFinished()) thread_dispatch();

    return 0;
}
