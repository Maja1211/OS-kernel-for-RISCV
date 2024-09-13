#include "../h/MemoryAllocator.hpp"
#include "../lib/console.h"
#include "../lib/hw.h"

MemoryAllocator::FullBlock* MemoryAllocator::fullHead= nullptr;
MemoryAllocator::FreeBlock* MemoryAllocator::freeHead= nullptr;
bool MemoryAllocator::initialized=false;
//const size_t freeMemSize= (size_t) (HEAP_END_ADDR) - (size_t) (HEAP_START_ADDR);

//OVDE MEM ALLOC PRIMA BR BLOKOVA

void MemoryAllocator::mem_init() {
    if(!initialized){
        initialized=true;
        freeHead = (FreeBlock*)((char*)HEAP_START_ADDR);
        freeHead->next=nullptr;
        freeHead->prev= nullptr;
        size_t heap_size = (uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR+1;
        if(heap_size%MEM_BLOCK_SIZE!=0){
            heap_size+=(MEM_BLOCK_SIZE-(heap_size%MEM_BLOCK_SIZE));
        }
        freeHead->size=heap_size/MEM_BLOCK_SIZE-1;  //U BLOKOVIMA
        //freeHead->size=(size_t) (HEAP_END_ADDR) - (size_t) (HEAP_START_ADDR); //U BAJTOVIMA
    }
}

void* MemoryAllocator::mem_alloc(size_t size) {
    if(size<1) return nullptr;
    size_t heap_size = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR;
    if (heap_size % MEM_BLOCK_SIZE != 0) {
        heap_size += (MEM_BLOCK_SIZE - (heap_size % MEM_BLOCK_SIZE));
    }
    if(size>=heap_size/MEM_BLOCK_SIZE) return nullptr;

    for(FreeBlock* cur=freeHead; cur != 0; cur=cur->next ){
        if(cur->size < size) continue;
        if(cur->size==size) {
            if(cur->prev){
                cur->prev->next=cur->next;
            }else{
                freeHead=cur->next;
            }if(cur->next){
                cur->next->prev=cur->prev;
            }
        }else{
            FreeBlock* fragment=(FreeBlock*)((char*)cur + (size) * MEM_BLOCK_SIZE);
            fragment->next=cur->next;
            fragment->prev=cur->prev;
            fragment->size= cur->size -size;
            if(cur->prev){
                cur->prev->next=fragment;
            }else{
                freeHead=fragment;
            }
            if(cur->next){
                cur->next->prev=fragment;
            }
        }


        FullBlock* tmp;
        if(fullHead== nullptr || (char*)cur < (char*)fullHead){
            tmp=0;
        }
        else{
            for(tmp=fullHead; tmp->next && (char*)cur > (char*)tmp->next; tmp=tmp->next);
        }
        FullBlock* newSeg= (FullBlock*)cur;
        newSeg->size= size;
        newSeg->prev=tmp;
        if(tmp){
            newSeg->next=tmp->next;
        }else{
            newSeg->next=fullHead;
        }
        if(newSeg->next){
            newSeg->next->prev=newSeg;
        }
        if(tmp){
            tmp->next=newSeg;
        }
        else{
            fullHead=newSeg;
        }
        return (void*)((char*)cur + sizeof(FullBlock));
    }

    return nullptr;
}



void MemoryAllocator::tryToJoin(FreeBlock *block) {
    if(!block) return ;
    if(block->next && (char*)block+block->size*MEM_BLOCK_SIZE==(char*)(block->next)){
        block->size+=block->next->size;
        block->next=block->next->next;
        if(block->next) block->next->prev=block;
    }
}



    int MemoryAllocator::mem_free(void *addr) {
        if (addr == nullptr) return -1;


        addr = (void*)((char*)addr - sizeof(FullBlock));

        FullBlock* blk = (FullBlock*)addr;
        FullBlock* tmp = fullHead;
        bool found = false;


        while (tmp && blk >= tmp) {
            if (tmp == blk) {
                found = true;
                break;
            }
            tmp = tmp->next;
        }

        if (!found) return -2;


        if (blk->prev) {
            blk->prev->next = blk->next;
        } else {
            fullHead = blk->next;
        }
        if (blk->next) {
            blk->next->prev = blk->prev;
        }


        FreeBlock* cur = nullptr;
        if (!freeHead || (char*)addr < (char*)freeHead) cur = nullptr;
        else {
            for (cur = freeHead; cur->next != nullptr && (char*)addr > (char*)cur->next; cur = cur->next);
        }


        FreeBlock* newSeg = (FreeBlock*)addr;
        newSeg->size = blk->size;
        newSeg->prev = cur;
        if (cur) newSeg->next = cur->next;
        else newSeg->next = freeHead;
        if (newSeg->next) newSeg->next->prev = newSeg;
        if (cur) cur->next = newSeg;
        else freeHead = newSeg;


        tryToJoin(newSeg);
        tryToJoin(cur);

        return 0;
    }


void MemoryAllocator::print() {
    for(FreeBlock* block=freeHead; block!= nullptr; block=block->next){
        __putc('f');
        __putc('\n');
    }
    for(FullBlock* b=fullHead; b!= nullptr; b=b->next){
        __putc('u');
        __putc('\n');
    }
}

