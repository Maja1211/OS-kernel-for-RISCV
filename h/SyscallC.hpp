

#ifndef PROJECT_BASE_V1_1_SYSCALLC_HPP
#define PROJECT_BASE_V1_1_SYSCALLC_HPP



#include "../lib/hw.h"

enum class SyscallCodes : uint64 {
    MEM_ALLOC = 0x01,
    MEM_FREE = 0x02,
    THREAD_CREATE = 0x11,
    THREAD_EXIT = 0x12,
    THREAD_DISPATCH = 0x13,
    SEM_OPEN = 0x21,
    SEM_CLOSE = 0x22,
    SEM_WAIT = 0x23,
    SEM_SIGNAL = 0x24,
    SEM_TRYWAIT = 0x26,
    GETC = 0x41,
    PUTC = 0x42
};


void *mem_alloc (size_t size);
int mem_free (void* mem);


class TCB;
typedef TCB *thread_t;
int thread_create (thread_t* handle, void(*body)(void*), void* arg);
int thread_exit();
void thread_dispatch ();


class Sem;
typedef Sem* sem_t;
typedef unsigned long time_t;
int sem_open (sem_t* handle, unsigned init);
int sem_close (sem_t handle);
int sem_wait (sem_t id);
int sem_signal (sem_t id);
int sem_trywait(sem_t id);

char getc();
void putc(char c);


#endif //PROJECT_BASE_V1_1_SYSCALLC_HPP