

#ifndef PROJECT_BASE_V1_1_SYSCALLCPP_HPP
#define PROJECT_BASE_V1_1_SYSCALLCPP_HPP

#include "SyscallC.hpp"

class Thread {

public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread();


    int start();


    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {};

private:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;

    static void wrapperRun(void*);
};

class Semaphore {

public:
    Semaphore(unsigned init=1);
    virtual ~Semaphore();
    int wait();
    int signal();
    int timedWait(time_t);
    int tryWait();

private:
    sem_t myHandle;
};

class Console {
public:
    static char getc ();
    static void putc (char);
};


#endif //PROJECT_BASE_V1_1_SYSCALLCPP_HPP
