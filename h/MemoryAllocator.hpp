

#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP



#include "../lib/hw.h"

class MemoryAllocator{

public:
    struct FreeBlock{
        FreeBlock* next;
        FreeBlock* prev;
        size_t size;
    };

    struct FullBlock{
        FullBlock* next;
        FullBlock* prev;
        size_t size;
    };

    static void* mem_alloc(size_t size);
    static int mem_free(void* addr);
    static void mem_init();

    MemoryAllocator(const MemoryAllocator&) = delete;
    MemoryAllocator& operator=(const MemoryAllocator&) = delete;

    static void tryToJoin(FreeBlock* block);
  static void print();

private:
    MemoryAllocator(){};

    static FreeBlock* freeHead;
    static FullBlock* fullHead;
    static bool initialized;


};

#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_HPP