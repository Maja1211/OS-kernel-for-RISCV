#include "../h/SyscallCpp.hpp"
#include "../h/tcb.hpp"

Thread::Thread(void (*body)(void*), void *arg) {
    this->myHandle=nullptr;
    this->body=body;
    this->arg=arg;
}

Thread::Thread() {
    this->myHandle=nullptr;
    this->body=wrapperRun;
    this->arg=(void*)this;
}

Thread::~Thread() {
    delete myHandle;
}

int Thread::start() {
    return thread_create(&myHandle, this->body, this->arg);
}

void Thread::dispatch() {
    thread_dispatch();
}

void Thread::wrapperRun(void *arg) {
    Thread* thread=(Thread*)arg;
    thread->run();
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    if(myHandle!=nullptr){
        sem_close(myHandle);
    }
}

int Semaphore::wait() {
    if(myHandle!=nullptr){
        return sem_wait(myHandle);
    }
    return -1;
}

int Semaphore::signal() {
    if(myHandle!=nullptr){
        return sem_signal(myHandle);
    }
    return -1;
}

int Semaphore::tryWait() {
    return sem_trywait(myHandle);
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}