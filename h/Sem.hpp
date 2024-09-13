

#ifndef PROJECT_BASE_V1_1_SEM_HPP
#define PROJECT_BASE_V1_1_SEM_HPP

#include "SyscallC.hpp"
#include "../lib/hw.h"
#include "Scheduler.hpp"
#include "tcb.hpp"

class Sem {
public:

    friend class Riscv;

    static int sem_open(sem_t* handle, unsigned init);
    static int sem_close(sem_t handle);
    static int sem_wait(sem_t);
    static int sem_signal(sem_t);
    static int sem_trywait(sem_t);
    void block();
    void deblock();

    void* operator new(size_t size);
    void operator delete(void* ptr);

private:

    explicit Sem(int c=1) : count(c), blockedThreads() {}

    int count;
    List<TCB> blockedThreads;
};


#endif //PROJECT_BASE_V1_1_SEM_HPP
