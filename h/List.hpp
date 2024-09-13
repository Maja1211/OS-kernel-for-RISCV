

#ifndef PROJECT_BASE_V1_1_LIST_HPP
#define PROJECT_BASE_V1_1_LIST_HPP

#include "MemoryAllocator.hpp"
#include "../h/SyscallC.hpp"

template<typename T>
class List
{
private:
    struct Node
    {
        T *data;
        Node *next;

        Node(T *data, Node *next) : data(data), next(next) {}

        void* operator new(size_t size) {
            return MemoryAllocator::mem_alloc(size);
        }
        void* operator new[](size_t size) {
            return MemoryAllocator::mem_alloc(size);
        }

        void operator delete(void *ptr) {
            MemoryAllocator::mem_free(ptr);
        }
        void operator delete[](void *ptr) {
            MemoryAllocator::mem_free(ptr);
        }
    };

    Node *head, *tail;

public:
    List() : head(0), tail(0) {}

    List(const List<T> &) = delete;

    List<T> &operator=(const List<T> &) = delete;


    void addLast(T *data)
    {

        Node *node =new Node(data,0);
        node->data = data;
        node->next = nullptr;
        if (tail)
        {
            tail->next = node;
            tail = node;
        } else
        {
            head = tail = node;
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }

        Node *node = head;
        head = head->next;
        if (!head) { tail = 0; }

        T *ret = node->data;
        delete node;
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
        return head->data;
    }

};

#endif //PROJECT_BASE_V1_1_LIST_HPP
