

#ifndef PROJECT_BASE_V1_1_RISCV_HPP
#define PROJECT_BASE_V1_1_RISCV_HPP



#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/SyscallC.hpp"

class Riscv{

public:

    enum class InterruptType : uint64 {
        SOFTWARE = 0x8000000000000001UL,
        EXTERNAL = 0x8000000000000009UL,
        U_ECALL  = 0x8UL,
        S_ECALL  = 0x9UL
    };

    static void supervisorTrap();
    static void interruptHandler();
    static void push();  //gura registre na stek
    static void pop();  //vraca registre sa steka

    static void popSppSpie();  //skida bitove spp i spie u registar sstatus

    static uint64 readScause();  //cita vr registra scause koji nam govori uzrok trenutnog prekida
    static void writeScause(uint64 scause);
    static uint64 readSepc();  //cita vr registra sepc koji cuva trenutnu vr pc kada je doslo do prekida
    static void writeSepc(uint64 sepc);
    static uint64 readStvec();      //cita vr iz registra stvec koji cuva adresu rutine koja obradjuje prekid
    static void writeStvec(uint64 stvec);

    enum BitMaskSip
    {
        SIP_SSIP = (1 << 1),
        SIP_SEIP = (1 << 9),   //bit koji oznacava da je eksterni prekid u supervisor rezimu na cekanju
    };

    //sip registar cuva informacije o tome koji su prekidi na cekanju u supervisor rezimu

    static void setSip(uint64 mask);  //postavlja odredjene bitove u sip registar na osnovu maske
    static void clearSip(uint64 mask);  //brise odredjene bitove iz sip registra na osnovu maske
    static uint64 readSip();
    static void writeSip(uint64 sip);

    enum BitMaskSstatus
    {
        SSTATUS_SIE = (1 << 1),    //govori da li su prekidi u supervisorModu dozvoljeni
        SSTATUS_SPIE = (1 << 5),   //cuva prethodno stanje sie prije nego sto se preslo na supervisorMode zbog prekida
        SSTATUS_SPP = (1 << 8),    //cuva prethodni privilegijski nivo 0-user 1-supervisorMode
    };

    static void setSstatus(uint64 mask);
    static void clearSstatus(uint64 mask);
    static uint64 readSstatus();
    static void writeSstatus(uint64 sstatus);



};

inline uint64 Riscv::readScause() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, scause" : "=r"(value));
    return value;
}

inline void Riscv::writeScause(uint64 value) {
    __asm__ volatile ("csrw scause, %0" : : "r"(value));
}

inline uint64 Riscv::readSepc() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    return value;
}

inline void Riscv::writeSepc(uint64 value) {
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
}

inline uint64 Riscv::readStvec() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, stvec" : "=r"(value));
    return value;
}

inline void Riscv::writeStvec(uint64 value) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(value));
}

inline void Riscv::setSip(uint64 mask) {
    __asm__ volatile("csrs sip, %0" : : "r"(mask));
}

inline void Riscv::clearSip(uint64 mask) {
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
}

inline uint64 Riscv::readSip() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sip" : "=r"(value));
    return value;
}

inline void Riscv::writeSip(uint64 value) {
    __asm__ volatile ("csrw sip, %0" : : "r"(value));
}

inline void Riscv::setSstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
}

inline void Riscv::clearSstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
};

inline uint64 Riscv::readSstatus() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    return value;
}

inline void Riscv::writeSstatus(uint64 value) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
}

#endif //PROJECT_BASE_V1_1_RISCV_HPP