

#ifndef PROJECT_BASE_V1_1_TCB_HPP
#define PROJECT_BASE_V1_1_TCB_HPP


#include "../lib/hw.h"
#include "Scheduler.hpp"
#include "MemoryAllocator.hpp"
#include "riscv.hpp"


using body=void(*)(void*);

class TCB{

private:

    TCB(body routine, void* arg, void * stack);

    struct Context{
        uint64 ra;
        uint64 sp;
    };


    uint64 t_ID;
    body routine;
    uint64* stack;
    void* arg;
    Context context;
    bool finished;
    bool blocked;

    friend class riscv;

    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);

public:

    friend class Sem;
    static int id;
    static TCB* running;

    bool isFinished()  { return finished; }

    void setFinished(bool value) { finished = value; }

    bool isBlocked()  { return blocked; }

    void setBlocked(bool value) { blocked = value; }

    static int createThread(TCB** handle, body routine, void* arg, void* stack);
    static int threadExit();
    static void dispatch();
    static void yield(TCB*, TCB*);

    ~TCB() { MemoryAllocator::mem_free(this->stack); }

    void* operator new(size_t size);
    void operator delete(void* ptr);


};


#endif //PROJECT_BASE_V1_1_TCB_HPP
