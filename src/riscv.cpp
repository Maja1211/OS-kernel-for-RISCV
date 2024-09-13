#include "../lib/hw.h"
#include "../h/riscv.hpp"
#include "../lib/console.h"
#include "../h/SyscallC.hpp"
#include "../h/tcb.hpp"
#include "../h/Sem.hpp"


void printStr(const char* string) {
    while (*string) {
        __putc(*string);
        string++;
    }
}

void Riscv::popSppSpie(){
    __asm__ volatile ("csrw sepc, ra");
    Riscv::clearSstatus(BitMaskSstatus::SSTATUS_SPP);
    __asm__ volatile ("sret");
}

void Riscv::interruptHandler(){

    uint64 scause = readScause();

    if(scause==uint64(InterruptType::SOFTWARE)) {
        clearSip(BitMaskSip::SIP_SSIP);
    }
    else if(scause==uint64(InterruptType::EXTERNAL)){
        console_handler();
    }
    else if(scause==uint64(InterruptType::U_ECALL) || scause==uint64(InterruptType::S_ECALL)){
        uint64 volatile oc, arg1, arg2, arg3, arg4;

        uint64 sepc=readSepc()+4;
        uint64 sstatus=readSstatus();

        __asm__ volatile("mv %0, a0" : "=r"(oc));

        if (static_cast<SyscallCodes>(oc) == SyscallCodes::MEM_ALLOC) {
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
            MemoryAllocator::mem_alloc((size_t)arg1);
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::MEM_FREE) {
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
            MemoryAllocator::mem_free((void *)arg1);
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::THREAD_CREATE) {
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
            __asm__ volatile("mv %0, a2" : "=r"(arg2));
            __asm__ volatile("mv %0, a3" : "=r"(arg3));
            __asm__ volatile("mv %0, a4" : "=r"(arg4));
            TCB::createThread((thread_t *)arg1, (body)arg2, (void *)arg3, (void *)arg4);
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::THREAD_EXIT) {
            TCB::threadExit();
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::THREAD_DISPATCH) {
            TCB::dispatch();
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::SEM_OPEN) {
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
            __asm__ volatile("mv %0, a2" : "=r"(arg2));
            Sem::sem_open((sem_t*)arg1, (unsigned int)arg2);
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::SEM_CLOSE) {
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
            Sem::sem_close((sem_t)arg1);
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::SEM_WAIT) {
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
            Sem::sem_wait((sem_t)arg1);
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::SEM_SIGNAL) {
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
            Sem::sem_signal((sem_t)arg1);
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::SEM_TRYWAIT) {
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
            Sem::sem_trywait((sem_t)arg1);
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::GETC) {
            __getc();
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::PUTC) {
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
            __putc(arg1);
        }
        writeSepc(sepc);
        writeSstatus(sstatus);
    }
    else{
        printStr("Error");
    }
}

