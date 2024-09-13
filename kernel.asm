
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	40013103          	ld	sp,1024(sp) # 8000b400 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	6e5050ef          	jal	ra,80005f00 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv4pushEv>:

.global _ZN5Riscv4pushEv
.type _ZN5Riscv4pushEv, @function

_ZN5Riscv4pushEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index*8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv3popEv>:
.type _ZN5Riscv3popEv, @function

_ZN5Riscv3popEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    ret
    800010f4:	00008067          	ret

00000000800010f8 <_ZN5Riscv14supervisorTrapEv>:
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv @function

_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    800010f8:	f0010113          	addi	sp,sp,-256
    .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index*8(sp)
    .endr
    800010fc:	00113423          	sd	ra,8(sp)
    80001100:	00213823          	sd	sp,16(sp)
    80001104:	00313c23          	sd	gp,24(sp)
    80001108:	02413023          	sd	tp,32(sp)
    8000110c:	02513423          	sd	t0,40(sp)
    80001110:	02613823          	sd	t1,48(sp)
    80001114:	02713c23          	sd	t2,56(sp)
    80001118:	04813023          	sd	s0,64(sp)
    8000111c:	04913423          	sd	s1,72(sp)
    80001120:	04b13c23          	sd	a1,88(sp)
    80001124:	06c13023          	sd	a2,96(sp)
    80001128:	06d13423          	sd	a3,104(sp)
    8000112c:	06e13823          	sd	a4,112(sp)
    80001130:	06f13c23          	sd	a5,120(sp)
    80001134:	09013023          	sd	a6,128(sp)
    80001138:	09113423          	sd	a7,136(sp)
    8000113c:	09213823          	sd	s2,144(sp)
    80001140:	09313c23          	sd	s3,152(sp)
    80001144:	0b413023          	sd	s4,160(sp)
    80001148:	0b513423          	sd	s5,168(sp)
    8000114c:	0b613823          	sd	s6,176(sp)
    80001150:	0b713c23          	sd	s7,184(sp)
    80001154:	0d813023          	sd	s8,192(sp)
    80001158:	0d913423          	sd	s9,200(sp)
    8000115c:	0da13823          	sd	s10,208(sp)
    80001160:	0db13c23          	sd	s11,216(sp)
    80001164:	0fc13023          	sd	t3,224(sp)
    80001168:	0fd13423          	sd	t4,232(sp)
    8000116c:	0fe13823          	sd	t5,240(sp)
    80001170:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv16interruptHandlerEv
    80001174:	1b0010ef          	jal	ra,80002324 <_ZN5Riscv16interruptHandlerEv>

    .irp index, 1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index*8(sp)
    .endr
    80001178:	00813083          	ld	ra,8(sp)
    8000117c:	01013103          	ld	sp,16(sp)
    80001180:	01813183          	ld	gp,24(sp)
    80001184:	02013203          	ld	tp,32(sp)
    80001188:	02813283          	ld	t0,40(sp)
    8000118c:	03013303          	ld	t1,48(sp)
    80001190:	03813383          	ld	t2,56(sp)
    80001194:	04013403          	ld	s0,64(sp)
    80001198:	04813483          	ld	s1,72(sp)
    8000119c:	05813583          	ld	a1,88(sp)
    800011a0:	06013603          	ld	a2,96(sp)
    800011a4:	06813683          	ld	a3,104(sp)
    800011a8:	07013703          	ld	a4,112(sp)
    800011ac:	07813783          	ld	a5,120(sp)
    800011b0:	08013803          	ld	a6,128(sp)
    800011b4:	08813883          	ld	a7,136(sp)
    800011b8:	09013903          	ld	s2,144(sp)
    800011bc:	09813983          	ld	s3,152(sp)
    800011c0:	0a013a03          	ld	s4,160(sp)
    800011c4:	0a813a83          	ld	s5,168(sp)
    800011c8:	0b013b03          	ld	s6,176(sp)
    800011cc:	0b813b83          	ld	s7,184(sp)
    800011d0:	0c013c03          	ld	s8,192(sp)
    800011d4:	0c813c83          	ld	s9,200(sp)
    800011d8:	0d013d03          	ld	s10,208(sp)
    800011dc:	0d813d83          	ld	s11,216(sp)
    800011e0:	0e013e03          	ld	t3,224(sp)
    800011e4:	0e813e83          	ld	t4,232(sp)
    800011e8:	0f013f03          	ld	t5,240(sp)
    800011ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800011f0:	10010113          	addi	sp,sp,256

    800011f4:	10200073          	sret
	...

0000000080001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function

_ZN3TCB13contextSwitchEPNS_7ContextES1_:

    # a0 - &old->context
    sd ra, 0 * 8(a0)
    80001200:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001204:	00253423          	sd	sp,8(a0)

    # a1 - &new->context
    ld ra, 0 * 8(a1)
    80001208:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000120c:	0085b103          	ld	sp,8(a1)

    80001210:	00008067          	ret

0000000080001214 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001214:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001218:	00b29a63          	bne	t0,a1,8000122c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000121c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001220:	fe029ae3          	bnez	t0,80001214 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001224:	00000513          	li	a0,0
    jr ra                  # Return.
    80001228:	00008067          	ret

000000008000122c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000122c:	00100513          	li	a0,1
    80001230:	00008067          	ret

0000000080001234 <_ZN6Thread10wrapperRunEPv>:

void Thread::dispatch() {
    thread_dispatch();
}

void Thread::wrapperRun(void *arg) {
    80001234:	ff010113          	addi	sp,sp,-16
    80001238:	00113423          	sd	ra,8(sp)
    8000123c:	00813023          	sd	s0,0(sp)
    80001240:	01010413          	addi	s0,sp,16
    Thread* thread=(Thread*)arg;
    thread->run();
    80001244:	00053783          	ld	a5,0(a0)
    80001248:	0107b783          	ld	a5,16(a5)
    8000124c:	000780e7          	jalr	a5
}
    80001250:	00813083          	ld	ra,8(sp)
    80001254:	00013403          	ld	s0,0(sp)
    80001258:	01010113          	addi	sp,sp,16
    8000125c:	00008067          	ret

0000000080001260 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001260:	fe010113          	addi	sp,sp,-32
    80001264:	00113c23          	sd	ra,24(sp)
    80001268:	00813823          	sd	s0,16(sp)
    8000126c:	00913423          	sd	s1,8(sp)
    80001270:	02010413          	addi	s0,sp,32
    80001274:	0000a797          	auipc	a5,0xa
    80001278:	f8c78793          	addi	a5,a5,-116 # 8000b200 <_ZTV6Thread+0x10>
    8000127c:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80001280:	00853483          	ld	s1,8(a0)
    80001284:	00048e63          	beqz	s1,800012a0 <_ZN6ThreadD1Ev+0x40>
    static int createThread(TCB** handle, body routine, void* arg, void* stack);
    static int threadExit();
    static void dispatch();
    static void yield(TCB*, TCB*);

    ~TCB() { MemoryAllocator::mem_free(this->stack); }
    80001288:	0104b503          	ld	a0,16(s1)
    8000128c:	00001097          	auipc	ra,0x1
    80001290:	564080e7          	jalr	1380(ra) # 800027f0 <_ZN15MemoryAllocator8mem_freeEPv>
    80001294:	00048513          	mv	a0,s1
    80001298:	00001097          	auipc	ra,0x1
    8000129c:	d80080e7          	jalr	-640(ra) # 80002018 <_ZN3TCBdlEPv>
}
    800012a0:	01813083          	ld	ra,24(sp)
    800012a4:	01013403          	ld	s0,16(sp)
    800012a8:	00813483          	ld	s1,8(sp)
    800012ac:	02010113          	addi	sp,sp,32
    800012b0:	00008067          	ret

00000000800012b4 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    800012b4:	fe010113          	addi	sp,sp,-32
    800012b8:	00113c23          	sd	ra,24(sp)
    800012bc:	00813823          	sd	s0,16(sp)
    800012c0:	00913423          	sd	s1,8(sp)
    800012c4:	02010413          	addi	s0,sp,32
    800012c8:	00050493          	mv	s1,a0
}
    800012cc:	00000097          	auipc	ra,0x0
    800012d0:	f94080e7          	jalr	-108(ra) # 80001260 <_ZN6ThreadD1Ev>
    800012d4:	00048513          	mv	a0,s1
    800012d8:	00001097          	auipc	ra,0x1
    800012dc:	b50080e7          	jalr	-1200(ra) # 80001e28 <_ZdlPv>
    800012e0:	01813083          	ld	ra,24(sp)
    800012e4:	01013403          	ld	s0,16(sp)
    800012e8:	00813483          	ld	s1,8(sp)
    800012ec:	02010113          	addi	sp,sp,32
    800012f0:	00008067          	ret

00000000800012f4 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800012f4:	0000a797          	auipc	a5,0xa
    800012f8:	f3478793          	addi	a5,a5,-204 # 8000b228 <_ZTV9Semaphore+0x10>
    800012fc:	00f53023          	sd	a5,0(a0)
    if(myHandle!=nullptr){
    80001300:	00853503          	ld	a0,8(a0)
    80001304:	02050663          	beqz	a0,80001330 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80001308:	ff010113          	addi	sp,sp,-16
    8000130c:	00113423          	sd	ra,8(sp)
    80001310:	00813023          	sd	s0,0(sp)
    80001314:	01010413          	addi	s0,sp,16
        sem_close(myHandle);
    80001318:	00000097          	auipc	ra,0x0
    8000131c:	478080e7          	jalr	1144(ra) # 80001790 <_Z9sem_closeP3Sem>
    }
}
    80001320:	00813083          	ld	ra,8(sp)
    80001324:	00013403          	ld	s0,0(sp)
    80001328:	01010113          	addi	sp,sp,16
    8000132c:	00008067          	ret
    80001330:	00008067          	ret

0000000080001334 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001334:	fe010113          	addi	sp,sp,-32
    80001338:	00113c23          	sd	ra,24(sp)
    8000133c:	00813823          	sd	s0,16(sp)
    80001340:	00913423          	sd	s1,8(sp)
    80001344:	02010413          	addi	s0,sp,32
    80001348:	00050493          	mv	s1,a0
}
    8000134c:	00000097          	auipc	ra,0x0
    80001350:	fa8080e7          	jalr	-88(ra) # 800012f4 <_ZN9SemaphoreD1Ev>
    80001354:	00048513          	mv	a0,s1
    80001358:	00001097          	auipc	ra,0x1
    8000135c:	ad0080e7          	jalr	-1328(ra) # 80001e28 <_ZdlPv>
    80001360:	01813083          	ld	ra,24(sp)
    80001364:	01013403          	ld	s0,16(sp)
    80001368:	00813483          	ld	s1,8(sp)
    8000136c:	02010113          	addi	sp,sp,32
    80001370:	00008067          	ret

0000000080001374 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void *arg) {
    80001374:	ff010113          	addi	sp,sp,-16
    80001378:	00813423          	sd	s0,8(sp)
    8000137c:	01010413          	addi	s0,sp,16
    80001380:	0000a797          	auipc	a5,0xa
    80001384:	e8078793          	addi	a5,a5,-384 # 8000b200 <_ZTV6Thread+0x10>
    80001388:	00f53023          	sd	a5,0(a0)
    this->myHandle=nullptr;
    8000138c:	00053423          	sd	zero,8(a0)
    this->body=body;
    80001390:	00b53823          	sd	a1,16(a0)
    this->arg=arg;
    80001394:	00c53c23          	sd	a2,24(a0)
}
    80001398:	00813403          	ld	s0,8(sp)
    8000139c:	01010113          	addi	sp,sp,16
    800013a0:	00008067          	ret

00000000800013a4 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800013a4:	ff010113          	addi	sp,sp,-16
    800013a8:	00813423          	sd	s0,8(sp)
    800013ac:	01010413          	addi	s0,sp,16
    800013b0:	0000a797          	auipc	a5,0xa
    800013b4:	e5078793          	addi	a5,a5,-432 # 8000b200 <_ZTV6Thread+0x10>
    800013b8:	00f53023          	sd	a5,0(a0)
    this->myHandle=nullptr;
    800013bc:	00053423          	sd	zero,8(a0)
    this->body=wrapperRun;
    800013c0:	00000797          	auipc	a5,0x0
    800013c4:	e7478793          	addi	a5,a5,-396 # 80001234 <_ZN6Thread10wrapperRunEPv>
    800013c8:	00f53823          	sd	a5,16(a0)
    this->arg=(void*)this;
    800013cc:	00a53c23          	sd	a0,24(a0)
}
    800013d0:	00813403          	ld	s0,8(sp)
    800013d4:	01010113          	addi	sp,sp,16
    800013d8:	00008067          	ret

00000000800013dc <_ZN6Thread5startEv>:
int Thread::start() {
    800013dc:	ff010113          	addi	sp,sp,-16
    800013e0:	00113423          	sd	ra,8(sp)
    800013e4:	00813023          	sd	s0,0(sp)
    800013e8:	01010413          	addi	s0,sp,16
    return thread_create(&myHandle, this->body, this->arg);
    800013ec:	01853603          	ld	a2,24(a0)
    800013f0:	01053583          	ld	a1,16(a0)
    800013f4:	00850513          	addi	a0,a0,8
    800013f8:	00000097          	auipc	ra,0x0
    800013fc:	244080e7          	jalr	580(ra) # 8000163c <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001400:	00813083          	ld	ra,8(sp)
    80001404:	00013403          	ld	s0,0(sp)
    80001408:	01010113          	addi	sp,sp,16
    8000140c:	00008067          	ret

0000000080001410 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001410:	ff010113          	addi	sp,sp,-16
    80001414:	00113423          	sd	ra,8(sp)
    80001418:	00813023          	sd	s0,0(sp)
    8000141c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001420:	00000097          	auipc	ra,0x0
    80001424:	2ec080e7          	jalr	748(ra) # 8000170c <_Z15thread_dispatchv>
}
    80001428:	00813083          	ld	ra,8(sp)
    8000142c:	00013403          	ld	s0,0(sp)
    80001430:	01010113          	addi	sp,sp,16
    80001434:	00008067          	ret

0000000080001438 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001438:	ff010113          	addi	sp,sp,-16
    8000143c:	00113423          	sd	ra,8(sp)
    80001440:	00813023          	sd	s0,0(sp)
    80001444:	01010413          	addi	s0,sp,16
    80001448:	0000a797          	auipc	a5,0xa
    8000144c:	de078793          	addi	a5,a5,-544 # 8000b228 <_ZTV9Semaphore+0x10>
    80001450:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001454:	00850513          	addi	a0,a0,8
    80001458:	00000097          	auipc	ra,0x0
    8000145c:	2f0080e7          	jalr	752(ra) # 80001748 <_Z8sem_openPP3Semj>
}
    80001460:	00813083          	ld	ra,8(sp)
    80001464:	00013403          	ld	s0,0(sp)
    80001468:	01010113          	addi	sp,sp,16
    8000146c:	00008067          	ret

0000000080001470 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    if(myHandle!=nullptr){
    80001470:	00853503          	ld	a0,8(a0)
    80001474:	02050663          	beqz	a0,800014a0 <_ZN9Semaphore4waitEv+0x30>
int Semaphore::wait() {
    80001478:	ff010113          	addi	sp,sp,-16
    8000147c:	00113423          	sd	ra,8(sp)
    80001480:	00813023          	sd	s0,0(sp)
    80001484:	01010413          	addi	s0,sp,16
        return sem_wait(myHandle);
    80001488:	00000097          	auipc	ra,0x0
    8000148c:	34c080e7          	jalr	844(ra) # 800017d4 <_Z8sem_waitP3Sem>
    }
    return -1;
}
    80001490:	00813083          	ld	ra,8(sp)
    80001494:	00013403          	ld	s0,0(sp)
    80001498:	01010113          	addi	sp,sp,16
    8000149c:	00008067          	ret
    return -1;
    800014a0:	fff00513          	li	a0,-1
}
    800014a4:	00008067          	ret

00000000800014a8 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    if(myHandle!=nullptr){
    800014a8:	00853503          	ld	a0,8(a0)
    800014ac:	02050663          	beqz	a0,800014d8 <_ZN9Semaphore6signalEv+0x30>
int Semaphore::signal() {
    800014b0:	ff010113          	addi	sp,sp,-16
    800014b4:	00113423          	sd	ra,8(sp)
    800014b8:	00813023          	sd	s0,0(sp)
    800014bc:	01010413          	addi	s0,sp,16
        return sem_signal(myHandle);
    800014c0:	00000097          	auipc	ra,0x0
    800014c4:	39c080e7          	jalr	924(ra) # 8000185c <_Z10sem_signalP3Sem>
    }
    return -1;
}
    800014c8:	00813083          	ld	ra,8(sp)
    800014cc:	00013403          	ld	s0,0(sp)
    800014d0:	01010113          	addi	sp,sp,16
    800014d4:	00008067          	ret
    return -1;
    800014d8:	fff00513          	li	a0,-1
}
    800014dc:	00008067          	ret

00000000800014e0 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    800014e0:	ff010113          	addi	sp,sp,-16
    800014e4:	00113423          	sd	ra,8(sp)
    800014e8:	00813023          	sd	s0,0(sp)
    800014ec:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    800014f0:	00853503          	ld	a0,8(a0)
    800014f4:	00000097          	auipc	ra,0x0
    800014f8:	324080e7          	jalr	804(ra) # 80001818 <_Z11sem_trywaitP3Sem>
}
    800014fc:	00813083          	ld	ra,8(sp)
    80001500:	00013403          	ld	s0,0(sp)
    80001504:	01010113          	addi	sp,sp,16
    80001508:	00008067          	ret

000000008000150c <_ZN7Console4getcEv>:

char Console::getc() {
    8000150c:	ff010113          	addi	sp,sp,-16
    80001510:	00113423          	sd	ra,8(sp)
    80001514:	00813023          	sd	s0,0(sp)
    80001518:	01010413          	addi	s0,sp,16
    return ::getc();
    8000151c:	00000097          	auipc	ra,0x0
    80001520:	384080e7          	jalr	900(ra) # 800018a0 <_Z4getcv>
}
    80001524:	00813083          	ld	ra,8(sp)
    80001528:	00013403          	ld	s0,0(sp)
    8000152c:	01010113          	addi	sp,sp,16
    80001530:	00008067          	ret

0000000080001534 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001534:	ff010113          	addi	sp,sp,-16
    80001538:	00113423          	sd	ra,8(sp)
    8000153c:	00813023          	sd	s0,0(sp)
    80001540:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001544:	00000097          	auipc	ra,0x0
    80001548:	3a0080e7          	jalr	928(ra) # 800018e4 <_Z4putcc>
    8000154c:	00813083          	ld	ra,8(sp)
    80001550:	00013403          	ld	s0,0(sp)
    80001554:	01010113          	addi	sp,sp,16
    80001558:	00008067          	ret

000000008000155c <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run () {};
    8000155c:	ff010113          	addi	sp,sp,-16
    80001560:	00813423          	sd	s0,8(sp)
    80001564:	01010413          	addi	s0,sp,16
    80001568:	00813403          	ld	s0,8(sp)
    8000156c:	01010113          	addi	sp,sp,16
    80001570:	00008067          	ret

0000000080001574 <_Z7syscallmmmmm>:
#include "../h/SyscallC.hpp"
#include "../h/MemoryAllocator.hpp"

void syscall(uint64 op_code, uint64 arg1 = 0, uint64 arg2 = 0, uint64 arg3 = 0, uint64 arg4 = 0) {
    80001574:	ff010113          	addi	sp,sp,-16
    80001578:	00813423          	sd	s0,8(sp)
    8000157c:	01010413          	addi	s0,sp,16
    __asm__ volatile("ecall");
    80001580:	00000073          	ecall
}
    80001584:	00813403          	ld	s0,8(sp)
    80001588:	01010113          	addi	sp,sp,16
    8000158c:	00008067          	ret

0000000080001590 <_Z9mem_allocm>:

void* mem_alloc (size_t size) {
    if (size==0) return nullptr;
    80001590:	04050c63          	beqz	a0,800015e8 <_Z9mem_allocm+0x58>
void* mem_alloc (size_t size) {
    80001594:	ff010113          	addi	sp,sp,-16
    80001598:	00113423          	sd	ra,8(sp)
    8000159c:	00813023          	sd	s0,0(sp)
    800015a0:	01010413          	addi	s0,sp,16
    void volatile *retVal;
    uint64 totalSize = size + sizeof(MemoryAllocator::FullBlock) - 1;   /////////////////////////////////////////////////
    800015a4:	01750593          	addi	a1,a0,23
    if (totalSize % MEM_BLOCK_SIZE != 0) {
    800015a8:	03f5f793          	andi	a5,a1,63
    800015ac:	00078663          	beqz	a5,800015b8 <_Z9mem_allocm+0x28>
        totalSize += (MEM_BLOCK_SIZE - (totalSize % MEM_BLOCK_SIZE));
    800015b0:	fc05f593          	andi	a1,a1,-64
    800015b4:	04058593          	addi	a1,a1,64
    }
    uint64 numOfBlocks = totalSize / MEM_BLOCK_SIZE;
    syscall((uint64)(SyscallCodes::MEM_ALLOC), numOfBlocks);
    800015b8:	00000713          	li	a4,0
    800015bc:	00000693          	li	a3,0
    800015c0:	00000613          	li	a2,0
    800015c4:	0065d593          	srli	a1,a1,0x6
    800015c8:	00100513          	li	a0,1
    800015cc:	00000097          	auipc	ra,0x0
    800015d0:	fa8080e7          	jalr	-88(ra) # 80001574 <_Z7syscallmmmmm>
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    800015d4:	00050513          	mv	a0,a0
    return (void*)retVal;
}
    800015d8:	00813083          	ld	ra,8(sp)
    800015dc:	00013403          	ld	s0,0(sp)
    800015e0:	01010113          	addi	sp,sp,16
    800015e4:	00008067          	ret
    if (size==0) return nullptr;
    800015e8:	00000513          	li	a0,0
}
    800015ec:	00008067          	ret

00000000800015f0 <_Z8mem_freePv>:

int mem_free(void* ptr) {
    800015f0:	fe010113          	addi	sp,sp,-32
    800015f4:	00113c23          	sd	ra,24(sp)
    800015f8:	00813823          	sd	s0,16(sp)
    800015fc:	02010413          	addi	s0,sp,32
    80001600:	00050593          	mv	a1,a0
    syscall(uint64(SyscallCodes::MEM_FREE), (uint64)ptr);
    80001604:	00000713          	li	a4,0
    80001608:	00000693          	li	a3,0
    8000160c:	00000613          	li	a2,0
    80001610:	00200513          	li	a0,2
    80001614:	00000097          	auipc	ra,0x0
    80001618:	f60080e7          	jalr	-160(ra) # 80001574 <_Z7syscallmmmmm>
    int volatile retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    8000161c:	00050793          	mv	a5,a0
    80001620:	fef42623          	sw	a5,-20(s0)
    return retVal;
    80001624:	fec42503          	lw	a0,-20(s0)
}
    80001628:	0005051b          	sext.w	a0,a0
    8000162c:	01813083          	ld	ra,24(sp)
    80001630:	01013403          	ld	s0,16(sp)
    80001634:	02010113          	addi	sp,sp,32
    80001638:	00008067          	ret

000000008000163c <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t *handle, void (*routine)(void *), void *arg) {
    8000163c:	fd010113          	addi	sp,sp,-48
    80001640:	02113423          	sd	ra,40(sp)
    80001644:	02813023          	sd	s0,32(sp)
    80001648:	00913c23          	sd	s1,24(sp)
    8000164c:	01213823          	sd	s2,16(sp)
    80001650:	01313423          	sd	s3,8(sp)
    80001654:	03010413          	addi	s0,sp,48
    80001658:	00050913          	mv	s2,a0
    8000165c:	00058493          	mv	s1,a1
    80001660:	00060993          	mv	s3,a2
    void* stack=nullptr;
    if (routine) {
    80001664:	04058a63          	beqz	a1,800016b8 <_Z13thread_createPP3TCBPFvPvES2_+0x7c>
        stack=mem_alloc(DEFAULT_STACK_SIZE);
    80001668:	00001537          	lui	a0,0x1
    8000166c:	00000097          	auipc	ra,0x0
    80001670:	f24080e7          	jalr	-220(ra) # 80001590 <_Z9mem_allocm>
    80001674:	00050713          	mv	a4,a0
        if (!stack) return -1;
    80001678:	04050463          	beqz	a0,800016c0 <_Z13thread_createPP3TCBPFvPvES2_+0x84>
    }
    syscall(uint64(SyscallCodes::THREAD_CREATE), (uint64)handle, (uint64)routine, (uint64)arg, (uint64)stack);
    8000167c:	00098693          	mv	a3,s3
    80001680:	00048613          	mv	a2,s1
    80001684:	00090593          	mv	a1,s2
    80001688:	01100513          	li	a0,17
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	ee8080e7          	jalr	-280(ra) # 80001574 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001694:	00050513          	mv	a0,a0
    80001698:	0005051b          	sext.w	a0,a0
    return retVal;
}
    8000169c:	02813083          	ld	ra,40(sp)
    800016a0:	02013403          	ld	s0,32(sp)
    800016a4:	01813483          	ld	s1,24(sp)
    800016a8:	01013903          	ld	s2,16(sp)
    800016ac:	00813983          	ld	s3,8(sp)
    800016b0:	03010113          	addi	sp,sp,48
    800016b4:	00008067          	ret
    void* stack=nullptr;
    800016b8:	00000713          	li	a4,0
    800016bc:	fc1ff06f          	j	8000167c <_Z13thread_createPP3TCBPFvPvES2_+0x40>
        if (!stack) return -1;
    800016c0:	fff00513          	li	a0,-1
    800016c4:	fd9ff06f          	j	8000169c <_Z13thread_createPP3TCBPFvPvES2_+0x60>

00000000800016c8 <_Z11thread_exitv>:

int thread_exit() {
    800016c8:	ff010113          	addi	sp,sp,-16
    800016cc:	00113423          	sd	ra,8(sp)
    800016d0:	00813023          	sd	s0,0(sp)
    800016d4:	01010413          	addi	s0,sp,16
    syscall(uint64(SyscallCodes::THREAD_EXIT));
    800016d8:	00000713          	li	a4,0
    800016dc:	00000693          	li	a3,0
    800016e0:	00000613          	li	a2,0
    800016e4:	00000593          	li	a1,0
    800016e8:	01200513          	li	a0,18
    800016ec:	00000097          	auipc	ra,0x0
    800016f0:	e88080e7          	jalr	-376(ra) # 80001574 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    800016f4:	00050513          	mv	a0,a0
    return retVal;
}
    800016f8:	0005051b          	sext.w	a0,a0
    800016fc:	00813083          	ld	ra,8(sp)
    80001700:	00013403          	ld	s0,0(sp)
    80001704:	01010113          	addi	sp,sp,16
    80001708:	00008067          	ret

000000008000170c <_Z15thread_dispatchv>:

void thread_dispatch() {
    8000170c:	ff010113          	addi	sp,sp,-16
    80001710:	00113423          	sd	ra,8(sp)
    80001714:	00813023          	sd	s0,0(sp)
    80001718:	01010413          	addi	s0,sp,16
    syscall(uint64(SyscallCodes::THREAD_DISPATCH));
    8000171c:	00000713          	li	a4,0
    80001720:	00000693          	li	a3,0
    80001724:	00000613          	li	a2,0
    80001728:	00000593          	li	a1,0
    8000172c:	01300513          	li	a0,19
    80001730:	00000097          	auipc	ra,0x0
    80001734:	e44080e7          	jalr	-444(ra) # 80001574 <_Z7syscallmmmmm>
}
    80001738:	00813083          	ld	ra,8(sp)
    8000173c:	00013403          	ld	s0,0(sp)
    80001740:	01010113          	addi	sp,sp,16
    80001744:	00008067          	ret

0000000080001748 <_Z8sem_openPP3Semj>:

int sem_open(sem_t* handle, unsigned init) {
    80001748:	ff010113          	addi	sp,sp,-16
    8000174c:	00113423          	sd	ra,8(sp)
    80001750:	00813023          	sd	s0,0(sp)
    80001754:	01010413          	addi	s0,sp,16
    syscall(uint64(SyscallCodes::SEM_OPEN), (uint64)handle, init);
    80001758:	00000713          	li	a4,0
    8000175c:	00000693          	li	a3,0
    80001760:	02059613          	slli	a2,a1,0x20
    80001764:	02065613          	srli	a2,a2,0x20
    80001768:	00050593          	mv	a1,a0
    8000176c:	02100513          	li	a0,33
    80001770:	00000097          	auipc	ra,0x0
    80001774:	e04080e7          	jalr	-508(ra) # 80001574 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001778:	00050513          	mv	a0,a0
    return retVal;
}
    8000177c:	0005051b          	sext.w	a0,a0
    80001780:	00813083          	ld	ra,8(sp)
    80001784:	00013403          	ld	s0,0(sp)
    80001788:	01010113          	addi	sp,sp,16
    8000178c:	00008067          	ret

0000000080001790 <_Z9sem_closeP3Sem>:

int sem_close(sem_t handle) {
    80001790:	ff010113          	addi	sp,sp,-16
    80001794:	00113423          	sd	ra,8(sp)
    80001798:	00813023          	sd	s0,0(sp)
    8000179c:	01010413          	addi	s0,sp,16
    800017a0:	00050593          	mv	a1,a0
    syscall(uint64(SyscallCodes::SEM_CLOSE), (uint64)handle);
    800017a4:	00000713          	li	a4,0
    800017a8:	00000693          	li	a3,0
    800017ac:	00000613          	li	a2,0
    800017b0:	02200513          	li	a0,34
    800017b4:	00000097          	auipc	ra,0x0
    800017b8:	dc0080e7          	jalr	-576(ra) # 80001574 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    800017bc:	00050513          	mv	a0,a0
    return retVal;
}
    800017c0:	0005051b          	sext.w	a0,a0
    800017c4:	00813083          	ld	ra,8(sp)
    800017c8:	00013403          	ld	s0,0(sp)
    800017cc:	01010113          	addi	sp,sp,16
    800017d0:	00008067          	ret

00000000800017d4 <_Z8sem_waitP3Sem>:

int sem_wait(sem_t id) {
    800017d4:	ff010113          	addi	sp,sp,-16
    800017d8:	00113423          	sd	ra,8(sp)
    800017dc:	00813023          	sd	s0,0(sp)
    800017e0:	01010413          	addi	s0,sp,16
    800017e4:	00050593          	mv	a1,a0
    syscall(uint64(SyscallCodes::SEM_WAIT), (uint64)id);
    800017e8:	00000713          	li	a4,0
    800017ec:	00000693          	li	a3,0
    800017f0:	00000613          	li	a2,0
    800017f4:	02300513          	li	a0,35
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	d7c080e7          	jalr	-644(ra) # 80001574 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001800:	00050513          	mv	a0,a0
    return retVal;
}
    80001804:	0005051b          	sext.w	a0,a0
    80001808:	00813083          	ld	ra,8(sp)
    8000180c:	00013403          	ld	s0,0(sp)
    80001810:	01010113          	addi	sp,sp,16
    80001814:	00008067          	ret

0000000080001818 <_Z11sem_trywaitP3Sem>:

int sem_trywait(sem_t id) {
    80001818:	ff010113          	addi	sp,sp,-16
    8000181c:	00113423          	sd	ra,8(sp)
    80001820:	00813023          	sd	s0,0(sp)
    80001824:	01010413          	addi	s0,sp,16
    80001828:	00050593          	mv	a1,a0
    syscall(uint64(SyscallCodes::SEM_TRYWAIT), (uint64)id);
    8000182c:	00000713          	li	a4,0
    80001830:	00000693          	li	a3,0
    80001834:	00000613          	li	a2,0
    80001838:	02600513          	li	a0,38
    8000183c:	00000097          	auipc	ra,0x0
    80001840:	d38080e7          	jalr	-712(ra) # 80001574 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001844:	00050513          	mv	a0,a0
    return retVal;
}
    80001848:	0005051b          	sext.w	a0,a0
    8000184c:	00813083          	ld	ra,8(sp)
    80001850:	00013403          	ld	s0,0(sp)
    80001854:	01010113          	addi	sp,sp,16
    80001858:	00008067          	ret

000000008000185c <_Z10sem_signalP3Sem>:

int sem_signal(sem_t id) {
    8000185c:	ff010113          	addi	sp,sp,-16
    80001860:	00113423          	sd	ra,8(sp)
    80001864:	00813023          	sd	s0,0(sp)
    80001868:	01010413          	addi	s0,sp,16
    8000186c:	00050593          	mv	a1,a0
    syscall(uint64(SyscallCodes::SEM_SIGNAL), (uint64)id);
    80001870:	00000713          	li	a4,0
    80001874:	00000693          	li	a3,0
    80001878:	00000613          	li	a2,0
    8000187c:	02400513          	li	a0,36
    80001880:	00000097          	auipc	ra,0x0
    80001884:	cf4080e7          	jalr	-780(ra) # 80001574 <_Z7syscallmmmmm>
    int retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    80001888:	00050513          	mv	a0,a0
    return retVal;
}
    8000188c:	0005051b          	sext.w	a0,a0
    80001890:	00813083          	ld	ra,8(sp)
    80001894:	00013403          	ld	s0,0(sp)
    80001898:	01010113          	addi	sp,sp,16
    8000189c:	00008067          	ret

00000000800018a0 <_Z4getcv>:

char getc() {
    800018a0:	ff010113          	addi	sp,sp,-16
    800018a4:	00113423          	sd	ra,8(sp)
    800018a8:	00813023          	sd	s0,0(sp)
    800018ac:	01010413          	addi	s0,sp,16
    syscall(uint64(SyscallCodes::GETC));
    800018b0:	00000713          	li	a4,0
    800018b4:	00000693          	li	a3,0
    800018b8:	00000613          	li	a2,0
    800018bc:	00000593          	li	a1,0
    800018c0:	04100513          	li	a0,65
    800018c4:	00000097          	auipc	ra,0x0
    800018c8:	cb0080e7          	jalr	-848(ra) # 80001574 <_Z7syscallmmmmm>
    char retVal;
    __asm__ volatile("mv %0, a0" : "=r"(retVal));
    800018cc:	00050513          	mv	a0,a0
    return retVal;
}
    800018d0:	0ff57513          	andi	a0,a0,255
    800018d4:	00813083          	ld	ra,8(sp)
    800018d8:	00013403          	ld	s0,0(sp)
    800018dc:	01010113          	addi	sp,sp,16
    800018e0:	00008067          	ret

00000000800018e4 <_Z4putcc>:

void putc(char c) {
    800018e4:	ff010113          	addi	sp,sp,-16
    800018e8:	00113423          	sd	ra,8(sp)
    800018ec:	00813023          	sd	s0,0(sp)
    800018f0:	01010413          	addi	s0,sp,16
    800018f4:	00050593          	mv	a1,a0
    syscall(uint64(SyscallCodes::PUTC), c);
    800018f8:	00000713          	li	a4,0
    800018fc:	00000693          	li	a3,0
    80001900:	00000613          	li	a2,0
    80001904:	04200513          	li	a0,66
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	c6c080e7          	jalr	-916(ra) # 80001574 <_Z7syscallmmmmm>
}
    80001910:	00813083          	ld	ra,8(sp)
    80001914:	00013403          	ld	s0,0(sp)
    80001918:	01010113          	addi	sp,sp,16
    8000191c:	00008067          	ret

0000000080001920 <_ZN3Sem5blockEv>:
#include "../h/Sem.hpp"


void Sem::block(){
    80001920:	fe010113          	addi	sp,sp,-32
    80001924:	00113c23          	sd	ra,24(sp)
    80001928:	00813823          	sd	s0,16(sp)
    8000192c:	00913423          	sd	s1,8(sp)
    80001930:	01213023          	sd	s2,0(sp)
    80001934:	02010413          	addi	s0,sp,32
    80001938:	00050493          	mv	s1,a0

    TCB *old = TCB::running;
    8000193c:	0000a797          	auipc	a5,0xa
    80001940:	acc7b783          	ld	a5,-1332(a5) # 8000b408 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001944:	0007b903          	ld	s2,0(a5)
    void setBlocked(bool value) { blocked = value; }
    80001948:	00100793          	li	a5,1
    8000194c:	02f908a3          	sb	a5,49(s2)
        Node *next;

        Node(T *data, Node *next) : data(data), next(next) {}

        void* operator new(size_t size) {
            return MemoryAllocator::mem_alloc(size);
    80001950:	01000513          	li	a0,16
    80001954:	00001097          	auipc	ra,0x1
    80001958:	cd4080e7          	jalr	-812(ra) # 80002628 <_ZN15MemoryAllocator9mem_allocEm>
        Node(T *data, Node *next) : data(data), next(next) {}
    8000195c:	01253023          	sd	s2,0(a0) # 1000 <_entry-0x7ffff000>
    80001960:	00053423          	sd	zero,8(a0)
    {

        Node *node =new Node(data,0);
        node->data = data;
        node->next = nullptr;
        if (tail)
    80001964:	0104b783          	ld	a5,16(s1)
    80001968:	04078463          	beqz	a5,800019b0 <_ZN3Sem5blockEv+0x90>
        {
            tail->next = node;
    8000196c:	00a7b423          	sd	a0,8(a5)
            tail = node;
    80001970:	00a4b823          	sd	a0,16(s1)
    old->setBlocked(true);
    this->blockedThreads.addLast(old);
    TCB::running = Scheduler::get();
    80001974:	00000097          	auipc	ra,0x0
    80001978:	304080e7          	jalr	772(ra) # 80001c78 <_ZN9Scheduler3getEv>
    8000197c:	00050593          	mv	a1,a0
    80001980:	0000a797          	auipc	a5,0xa
    80001984:	a887b783          	ld	a5,-1400(a5) # 8000b408 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001988:	00a7b023          	sd	a0,0(a5)
    TCB::yield(old, TCB::running);
    8000198c:	00090513          	mv	a0,s2
    80001990:	00000097          	auipc	ra,0x0
    80001994:	6b0080e7          	jalr	1712(ra) # 80002040 <_ZN3TCB5yieldEPS_S0_>

}
    80001998:	01813083          	ld	ra,24(sp)
    8000199c:	01013403          	ld	s0,16(sp)
    800019a0:	00813483          	ld	s1,8(sp)
    800019a4:	00013903          	ld	s2,0(sp)
    800019a8:	02010113          	addi	sp,sp,32
    800019ac:	00008067          	ret
        } else
        {
            head = tail = node;
    800019b0:	00a4b823          	sd	a0,16(s1)
    800019b4:	00a4b423          	sd	a0,8(s1)
    800019b8:	fbdff06f          	j	80001974 <_ZN3Sem5blockEv+0x54>

00000000800019bc <_ZN3Sem7deblockEv>:

void Sem::deblock(){
    800019bc:	fe010113          	addi	sp,sp,-32
    800019c0:	00113c23          	sd	ra,24(sp)
    800019c4:	00813823          	sd	s0,16(sp)
    800019c8:	00913423          	sd	s1,8(sp)
    800019cc:	02010413          	addi	s0,sp,32
    800019d0:	00050793          	mv	a5,a0
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800019d4:	00853503          	ld	a0,8(a0)
    800019d8:	04050463          	beqz	a0,80001a20 <_ZN3Sem7deblockEv+0x64>

        Node *node = head;
        head = head->next;
    800019dc:	00853703          	ld	a4,8(a0)
    800019e0:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    800019e4:	02070a63          	beqz	a4,80001a18 <_ZN3Sem7deblockEv+0x5c>

        T *ret = node->data;
    800019e8:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    800019ec:	00001097          	auipc	ra,0x1
    800019f0:	e04080e7          	jalr	-508(ra) # 800027f0 <_ZN15MemoryAllocator8mem_freeEPv>
    800019f4:	020488a3          	sb	zero,49(s1)
    TCB* t = this->blockedThreads.removeFirst();
    t->setBlocked(false);
    Scheduler::put(t);
    800019f8:	00048513          	mv	a0,s1
    800019fc:	00000097          	auipc	ra,0x0
    80001a00:	2e4080e7          	jalr	740(ra) # 80001ce0 <_ZN9Scheduler3putEP3TCB>
}
    80001a04:	01813083          	ld	ra,24(sp)
    80001a08:	01013403          	ld	s0,16(sp)
    80001a0c:	00813483          	ld	s1,8(sp)
    80001a10:	02010113          	addi	sp,sp,32
    80001a14:	00008067          	ret
        if (!head) { tail = 0; }
    80001a18:	0007b823          	sd	zero,16(a5)
    80001a1c:	fcdff06f          	j	800019e8 <_ZN3Sem7deblockEv+0x2c>
        if (!head) { return 0; }
    80001a20:	00050493          	mv	s1,a0
    80001a24:	fd1ff06f          	j	800019f4 <_ZN3Sem7deblockEv+0x38>

0000000080001a28 <_ZN3Sem8sem_waitEPS_>:
    delete handle;
    return 0;
}

int Sem::sem_wait(sem_t handle) {
    if (!handle) return -1;
    80001a28:	04050663          	beqz	a0,80001a74 <_ZN3Sem8sem_waitEPS_+0x4c>
    handle->count--;
    80001a2c:	00052783          	lw	a5,0(a0)
    80001a30:	fff7879b          	addiw	a5,a5,-1
    80001a34:	00f52023          	sw	a5,0(a0)
    if (handle->count<0) {
    80001a38:	02079713          	slli	a4,a5,0x20
    80001a3c:	00074663          	bltz	a4,80001a48 <_ZN3Sem8sem_waitEPS_+0x20>
        handle->block();

        if (!handle) return -1;
    }
    return 0;
    80001a40:	00000513          	li	a0,0
}
    80001a44:	00008067          	ret
int Sem::sem_wait(sem_t handle) {
    80001a48:	ff010113          	addi	sp,sp,-16
    80001a4c:	00113423          	sd	ra,8(sp)
    80001a50:	00813023          	sd	s0,0(sp)
    80001a54:	01010413          	addi	s0,sp,16
        handle->block();
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	ec8080e7          	jalr	-312(ra) # 80001920 <_ZN3Sem5blockEv>
    return 0;
    80001a60:	00000513          	li	a0,0
}
    80001a64:	00813083          	ld	ra,8(sp)
    80001a68:	00013403          	ld	s0,0(sp)
    80001a6c:	01010113          	addi	sp,sp,16
    80001a70:	00008067          	ret
    if (!handle) return -1;
    80001a74:	fff00513          	li	a0,-1
    80001a78:	00008067          	ret

0000000080001a7c <_ZN3Sem10sem_signalEPS_>:

int Sem::sem_signal(sem_t handle){
    if (handle == nullptr) return -1;
    80001a7c:	04050663          	beqz	a0,80001ac8 <_ZN3Sem10sem_signalEPS_+0x4c>
    if (++handle->count <= 0) handle->deblock();
    80001a80:	00052783          	lw	a5,0(a0)
    80001a84:	0017879b          	addiw	a5,a5,1
    80001a88:	0007871b          	sext.w	a4,a5
    80001a8c:	00f52023          	sw	a5,0(a0)
    80001a90:	00e05663          	blez	a4,80001a9c <_ZN3Sem10sem_signalEPS_+0x20>
    return 0;
    80001a94:	00000513          	li	a0,0
}
    80001a98:	00008067          	ret
int Sem::sem_signal(sem_t handle){
    80001a9c:	ff010113          	addi	sp,sp,-16
    80001aa0:	00113423          	sd	ra,8(sp)
    80001aa4:	00813023          	sd	s0,0(sp)
    80001aa8:	01010413          	addi	s0,sp,16
    if (++handle->count <= 0) handle->deblock();
    80001aac:	00000097          	auipc	ra,0x0
    80001ab0:	f10080e7          	jalr	-240(ra) # 800019bc <_ZN3Sem7deblockEv>
    return 0;
    80001ab4:	00000513          	li	a0,0
}
    80001ab8:	00813083          	ld	ra,8(sp)
    80001abc:	00013403          	ld	s0,0(sp)
    80001ac0:	01010113          	addi	sp,sp,16
    80001ac4:	00008067          	ret
    if (handle == nullptr) return -1;
    80001ac8:	fff00513          	li	a0,-1
    80001acc:	00008067          	ret

0000000080001ad0 <_ZN3Sem11sem_trywaitEPS_>:

int Sem::sem_trywait(sem_t handle) {
    if (!handle) return -1;
    80001ad0:	02050e63          	beqz	a0,80001b0c <_ZN3Sem11sem_trywaitEPS_+0x3c>
    if (handle->count>0) return sem_wait(handle);
    80001ad4:	00052783          	lw	a5,0(a0)
    80001ad8:	00f04663          	bgtz	a5,80001ae4 <_ZN3Sem11sem_trywaitEPS_+0x14>
    return 0;
    80001adc:	00000513          	li	a0,0
}
    80001ae0:	00008067          	ret
int Sem::sem_trywait(sem_t handle) {
    80001ae4:	ff010113          	addi	sp,sp,-16
    80001ae8:	00113423          	sd	ra,8(sp)
    80001aec:	00813023          	sd	s0,0(sp)
    80001af0:	01010413          	addi	s0,sp,16
    if (handle->count>0) return sem_wait(handle);
    80001af4:	00000097          	auipc	ra,0x0
    80001af8:	f34080e7          	jalr	-204(ra) # 80001a28 <_ZN3Sem8sem_waitEPS_>
}
    80001afc:	00813083          	ld	ra,8(sp)
    80001b00:	00013403          	ld	s0,0(sp)
    80001b04:	01010113          	addi	sp,sp,16
    80001b08:	00008067          	ret
    if (!handle) return -1;
    80001b0c:	fff00513          	li	a0,-1
    80001b10:	00008067          	ret

0000000080001b14 <_ZN3SemnwEm>:

void *Sem::operator new(size_t size) {
    80001b14:	ff010113          	addi	sp,sp,-16
    80001b18:	00113423          	sd	ra,8(sp)
    80001b1c:	00813023          	sd	s0,0(sp)
    80001b20:	01010413          	addi	s0,sp,16
    size_t numOfBlocks=(size + sizeof(MemoryAllocator::FullBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001b24:	05750513          	addi	a0,a0,87
    return MemoryAllocator::mem_alloc(numOfBlocks);
    80001b28:	00655513          	srli	a0,a0,0x6
    80001b2c:	00001097          	auipc	ra,0x1
    80001b30:	afc080e7          	jalr	-1284(ra) # 80002628 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001b34:	00813083          	ld	ra,8(sp)
    80001b38:	00013403          	ld	s0,0(sp)
    80001b3c:	01010113          	addi	sp,sp,16
    80001b40:	00008067          	ret

0000000080001b44 <_ZN3Sem8sem_openEPPS_j>:
int Sem::sem_open(sem_t *handle, unsigned int init) {
    80001b44:	fe010113          	addi	sp,sp,-32
    80001b48:	00113c23          	sd	ra,24(sp)
    80001b4c:	00813823          	sd	s0,16(sp)
    80001b50:	00913423          	sd	s1,8(sp)
    80001b54:	01213023          	sd	s2,0(sp)
    80001b58:	02010413          	addi	s0,sp,32
    80001b5c:	00050913          	mv	s2,a0
    80001b60:	00058493          	mv	s1,a1
    Sem* sem = new Sem((int)(init));
    80001b64:	01800513          	li	a0,24
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	fac080e7          	jalr	-84(ra) # 80001b14 <_ZN3SemnwEm>
    void* operator new(size_t size);
    void operator delete(void* ptr);

private:

    explicit Sem(int c=1) : count(c), blockedThreads() {}
    80001b70:	00952023          	sw	s1,0(a0)
    List() : head(0), tail(0) {}
    80001b74:	00053423          	sd	zero,8(a0)
    80001b78:	00053823          	sd	zero,16(a0)
    if (sem == nullptr) {
    80001b7c:	02050263          	beqz	a0,80001ba0 <_ZN3Sem8sem_openEPPS_j+0x5c>
    *handle = sem;
    80001b80:	00a93023          	sd	a0,0(s2)
    return 0;
    80001b84:	00000513          	li	a0,0
}
    80001b88:	01813083          	ld	ra,24(sp)
    80001b8c:	01013403          	ld	s0,16(sp)
    80001b90:	00813483          	ld	s1,8(sp)
    80001b94:	00013903          	ld	s2,0(sp)
    80001b98:	02010113          	addi	sp,sp,32
    80001b9c:	00008067          	ret
        return -1;
    80001ba0:	fff00513          	li	a0,-1
    80001ba4:	fe5ff06f          	j	80001b88 <_ZN3Sem8sem_openEPPS_j+0x44>

0000000080001ba8 <_ZN3SemdlEPv>:

void Sem::operator delete(void *ptr) {
    80001ba8:	ff010113          	addi	sp,sp,-16
    80001bac:	00113423          	sd	ra,8(sp)
    80001bb0:	00813023          	sd	s0,0(sp)
    80001bb4:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001bb8:	00001097          	auipc	ra,0x1
    80001bbc:	c38080e7          	jalr	-968(ra) # 800027f0 <_ZN15MemoryAllocator8mem_freeEPv>
    80001bc0:	00813083          	ld	ra,8(sp)
    80001bc4:	00013403          	ld	s0,0(sp)
    80001bc8:	01010113          	addi	sp,sp,16
    80001bcc:	00008067          	ret

0000000080001bd0 <_ZN3Sem9sem_closeEPS_>:
int Sem::sem_close(sem_t handle) {
    80001bd0:	fe010113          	addi	sp,sp,-32
    80001bd4:	00113c23          	sd	ra,24(sp)
    80001bd8:	00813823          	sd	s0,16(sp)
    80001bdc:	00913423          	sd	s1,8(sp)
    80001be0:	02010413          	addi	s0,sp,32
    80001be4:	00050493          	mv	s1,a0
    if (!handle) return -1;
    80001be8:	04050463          	beqz	a0,80001c30 <_ZN3Sem9sem_closeEPS_+0x60>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001bec:	0084b783          	ld	a5,8(s1)
    80001bf0:	00078e63          	beqz	a5,80001c0c <_ZN3Sem9sem_closeEPS_+0x3c>
        return head->data;
    80001bf4:	0007b783          	ld	a5,0(a5)
    while (handle->blockedThreads.peekFirst()) {
    80001bf8:	00078a63          	beqz	a5,80001c0c <_ZN3Sem9sem_closeEPS_+0x3c>
        handle->deblock();
    80001bfc:	00048513          	mv	a0,s1
    80001c00:	00000097          	auipc	ra,0x0
    80001c04:	dbc080e7          	jalr	-580(ra) # 800019bc <_ZN3Sem7deblockEv>
    while (handle->blockedThreads.peekFirst()) {
    80001c08:	fe5ff06f          	j	80001bec <_ZN3Sem9sem_closeEPS_+0x1c>
    delete handle;
    80001c0c:	00048513          	mv	a0,s1
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	f98080e7          	jalr	-104(ra) # 80001ba8 <_ZN3SemdlEPv>
    return 0;
    80001c18:	00000513          	li	a0,0
}
    80001c1c:	01813083          	ld	ra,24(sp)
    80001c20:	01013403          	ld	s0,16(sp)
    80001c24:	00813483          	ld	s1,8(sp)
    80001c28:	02010113          	addi	sp,sp,32
    80001c2c:	00008067          	ret
    if (!handle) return -1;
    80001c30:	fff00513          	li	a0,-1
    80001c34:	fe9ff06f          	j	80001c1c <_ZN3Sem9sem_closeEPS_+0x4c>

0000000080001c38 <_Z41__static_initialization_and_destruction_0ii>:
    return MemoryAllocator::mem_alloc(numOfBlocks);
}

void Scheduler::operator delete(void *ptr) {
    MemoryAllocator::mem_free(ptr);
    80001c38:	ff010113          	addi	sp,sp,-16
    80001c3c:	00813423          	sd	s0,8(sp)
    80001c40:	01010413          	addi	s0,sp,16
    80001c44:	00100793          	li	a5,1
    80001c48:	00f50863          	beq	a0,a5,80001c58 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001c4c:	00813403          	ld	s0,8(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret
    80001c58:	000107b7          	lui	a5,0x10
    80001c5c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001c60:	fef596e3          	bne	a1,a5,80001c4c <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80001c64:	00009797          	auipc	a5,0x9
    80001c68:	7fc78793          	addi	a5,a5,2044 # 8000b460 <_ZN9Scheduler5readyE>
    80001c6c:	0007b023          	sd	zero,0(a5)
    80001c70:	0007b423          	sd	zero,8(a5)
    80001c74:	fd9ff06f          	j	80001c4c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001c78 <_ZN9Scheduler3getEv>:
TCB* Scheduler::get(){
    80001c78:	fe010113          	addi	sp,sp,-32
    80001c7c:	00113c23          	sd	ra,24(sp)
    80001c80:	00813823          	sd	s0,16(sp)
    80001c84:	00913423          	sd	s1,8(sp)
    80001c88:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80001c8c:	00009517          	auipc	a0,0x9
    80001c90:	7d453503          	ld	a0,2004(a0) # 8000b460 <_ZN9Scheduler5readyE>
    80001c94:	04050263          	beqz	a0,80001cd8 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80001c98:	00853783          	ld	a5,8(a0)
    80001c9c:	00009717          	auipc	a4,0x9
    80001ca0:	7cf73223          	sd	a5,1988(a4) # 8000b460 <_ZN9Scheduler5readyE>
        if (!head) { tail = 0; }
    80001ca4:	02078463          	beqz	a5,80001ccc <_ZN9Scheduler3getEv+0x54>
        T *ret = node->data;
    80001ca8:	00053483          	ld	s1,0(a0)
            MemoryAllocator::mem_free(ptr);
    80001cac:	00001097          	auipc	ra,0x1
    80001cb0:	b44080e7          	jalr	-1212(ra) # 800027f0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80001cb4:	00048513          	mv	a0,s1
    80001cb8:	01813083          	ld	ra,24(sp)
    80001cbc:	01013403          	ld	s0,16(sp)
    80001cc0:	00813483          	ld	s1,8(sp)
    80001cc4:	02010113          	addi	sp,sp,32
    80001cc8:	00008067          	ret
        if (!head) { tail = 0; }
    80001ccc:	00009797          	auipc	a5,0x9
    80001cd0:	7807be23          	sd	zero,1948(a5) # 8000b468 <_ZN9Scheduler5readyE+0x8>
    80001cd4:	fd5ff06f          	j	80001ca8 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001cd8:	00050493          	mv	s1,a0
    return ready.removeFirst();
    80001cdc:	fd9ff06f          	j	80001cb4 <_ZN9Scheduler3getEv+0x3c>

0000000080001ce0 <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *thread){
    80001ce0:	fe010113          	addi	sp,sp,-32
    80001ce4:	00113c23          	sd	ra,24(sp)
    80001ce8:	00813823          	sd	s0,16(sp)
    80001cec:	00913423          	sd	s1,8(sp)
    80001cf0:	02010413          	addi	s0,sp,32
    80001cf4:	00050493          	mv	s1,a0
            return MemoryAllocator::mem_alloc(size);
    80001cf8:	01000513          	li	a0,16
    80001cfc:	00001097          	auipc	ra,0x1
    80001d00:	92c080e7          	jalr	-1748(ra) # 80002628 <_ZN15MemoryAllocator9mem_allocEm>
        Node(T *data, Node *next) : data(data), next(next) {}
    80001d04:	00953023          	sd	s1,0(a0)
    80001d08:	00053423          	sd	zero,8(a0)
        if (tail)
    80001d0c:	00009797          	auipc	a5,0x9
    80001d10:	75c7b783          	ld	a5,1884(a5) # 8000b468 <_ZN9Scheduler5readyE+0x8>
    80001d14:	02078263          	beqz	a5,80001d38 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = node;
    80001d18:	00a7b423          	sd	a0,8(a5)
            tail = node;
    80001d1c:	00009797          	auipc	a5,0x9
    80001d20:	74a7b623          	sd	a0,1868(a5) # 8000b468 <_ZN9Scheduler5readyE+0x8>
}
    80001d24:	01813083          	ld	ra,24(sp)
    80001d28:	01013403          	ld	s0,16(sp)
    80001d2c:	00813483          	ld	s1,8(sp)
    80001d30:	02010113          	addi	sp,sp,32
    80001d34:	00008067          	ret
            head = tail = node;
    80001d38:	00009797          	auipc	a5,0x9
    80001d3c:	72878793          	addi	a5,a5,1832 # 8000b460 <_ZN9Scheduler5readyE>
    80001d40:	00a7b423          	sd	a0,8(a5)
    80001d44:	00a7b023          	sd	a0,0(a5)
    80001d48:	fddff06f          	j	80001d24 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001d4c <_ZN9SchedulernwEm>:
void *Scheduler::operator new(size_t size) {
    80001d4c:	ff010113          	addi	sp,sp,-16
    80001d50:	00113423          	sd	ra,8(sp)
    80001d54:	00813023          	sd	s0,0(sp)
    80001d58:	01010413          	addi	s0,sp,16
    size_t numOfBlocks=(size + sizeof(MemoryAllocator::FullBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001d5c:	05750513          	addi	a0,a0,87
    return MemoryAllocator::mem_alloc(numOfBlocks);
    80001d60:	00655513          	srli	a0,a0,0x6
    80001d64:	00001097          	auipc	ra,0x1
    80001d68:	8c4080e7          	jalr	-1852(ra) # 80002628 <_ZN15MemoryAllocator9mem_allocEm>
}
    80001d6c:	00813083          	ld	ra,8(sp)
    80001d70:	00013403          	ld	s0,0(sp)
    80001d74:	01010113          	addi	sp,sp,16
    80001d78:	00008067          	ret

0000000080001d7c <_ZN9SchedulerdlEPv>:
void Scheduler::operator delete(void *ptr) {
    80001d7c:	ff010113          	addi	sp,sp,-16
    80001d80:	00113423          	sd	ra,8(sp)
    80001d84:	00813023          	sd	s0,0(sp)
    80001d88:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80001d8c:	00001097          	auipc	ra,0x1
    80001d90:	a64080e7          	jalr	-1436(ra) # 800027f0 <_ZN15MemoryAllocator8mem_freeEPv>
    80001d94:	00813083          	ld	ra,8(sp)
    80001d98:	00013403          	ld	s0,0(sp)
    80001d9c:	01010113          	addi	sp,sp,16
    80001da0:	00008067          	ret

0000000080001da4 <_GLOBAL__sub_I__ZN9Scheduler5readyE>:
    80001da4:	ff010113          	addi	sp,sp,-16
    80001da8:	00113423          	sd	ra,8(sp)
    80001dac:	00813023          	sd	s0,0(sp)
    80001db0:	01010413          	addi	s0,sp,16
    80001db4:	000105b7          	lui	a1,0x10
    80001db8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001dbc:	00100513          	li	a0,1
    80001dc0:	00000097          	auipc	ra,0x0
    80001dc4:	e78080e7          	jalr	-392(ra) # 80001c38 <_Z41__static_initialization_and_destruction_0ii>
    80001dc8:	00813083          	ld	ra,8(sp)
    80001dcc:	00013403          	ld	s0,0(sp)
    80001dd0:	01010113          	addi	sp,sp,16
    80001dd4:	00008067          	ret

0000000080001dd8 <_Znwm>:
#include "../h/SyscallC.hpp"

void* operator new(size_t size) {
    80001dd8:	ff010113          	addi	sp,sp,-16
    80001ddc:	00113423          	sd	ra,8(sp)
    80001de0:	00813023          	sd	s0,0(sp)
    80001de4:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001de8:	fffff097          	auipc	ra,0xfffff
    80001dec:	7a8080e7          	jalr	1960(ra) # 80001590 <_Z9mem_allocm>
}
    80001df0:	00813083          	ld	ra,8(sp)
    80001df4:	00013403          	ld	s0,0(sp)
    80001df8:	01010113          	addi	sp,sp,16
    80001dfc:	00008067          	ret

0000000080001e00 <_Znam>:

void* operator new[](size_t size) {
    80001e00:	ff010113          	addi	sp,sp,-16
    80001e04:	00113423          	sd	ra,8(sp)
    80001e08:	00813023          	sd	s0,0(sp)
    80001e0c:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80001e10:	fffff097          	auipc	ra,0xfffff
    80001e14:	780080e7          	jalr	1920(ra) # 80001590 <_Z9mem_allocm>
}
    80001e18:	00813083          	ld	ra,8(sp)
    80001e1c:	00013403          	ld	s0,0(sp)
    80001e20:	01010113          	addi	sp,sp,16
    80001e24:	00008067          	ret

0000000080001e28 <_ZdlPv>:

void operator delete(void* ptr) noexcept {
    80001e28:	ff010113          	addi	sp,sp,-16
    80001e2c:	00113423          	sd	ra,8(sp)
    80001e30:	00813023          	sd	s0,0(sp)
    80001e34:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001e38:	fffff097          	auipc	ra,0xfffff
    80001e3c:	7b8080e7          	jalr	1976(ra) # 800015f0 <_Z8mem_freePv>
}
    80001e40:	00813083          	ld	ra,8(sp)
    80001e44:	00013403          	ld	s0,0(sp)
    80001e48:	01010113          	addi	sp,sp,16
    80001e4c:	00008067          	ret

0000000080001e50 <_ZdaPv>:

void operator delete[](void* ptr) noexcept {
    80001e50:	ff010113          	addi	sp,sp,-16
    80001e54:	00113423          	sd	ra,8(sp)
    80001e58:	00813023          	sd	s0,0(sp)
    80001e5c:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80001e60:	fffff097          	auipc	ra,0xfffff
    80001e64:	790080e7          	jalr	1936(ra) # 800015f0 <_Z8mem_freePv>
}
    80001e68:	00813083          	ld	ra,8(sp)
    80001e6c:	00013403          	ld	s0,0(sp)
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret

0000000080001e78 <_Z11userWrapperPv>:
thread_t mainThread;
thread_t userMainThread;

extern void userMain();

void userWrapper(void*) {
    80001e78:	ff010113          	addi	sp,sp,-16
    80001e7c:	00113423          	sd	ra,8(sp)
    80001e80:	00813023          	sd	s0,0(sp)
    80001e84:	01010413          	addi	s0,sp,16
    userMain();
    80001e88:	00003097          	auipc	ra,0x3
    80001e8c:	628080e7          	jalr	1576(ra) # 800054b0 <_Z8userMainv>
}
    80001e90:	00813083          	ld	ra,8(sp)
    80001e94:	00013403          	ld	s0,0(sp)
    80001e98:	01010113          	addi	sp,sp,16
    80001e9c:	00008067          	ret

0000000080001ea0 <main>:

int main(){
    80001ea0:	fe010113          	addi	sp,sp,-32
    80001ea4:	00113c23          	sd	ra,24(sp)
    80001ea8:	00813823          	sd	s0,16(sp)
    80001eac:	00913423          	sd	s1,8(sp)
    80001eb0:	02010413          	addi	s0,sp,32

    Riscv::writeStvec((uint64)&Riscv::supervisorTrap);
    80001eb4:	00009797          	auipc	a5,0x9
    80001eb8:	5447b783          	ld	a5,1348(a5) # 8000b3f8 <_GLOBAL_OFFSET_TABLE_+0x10>
    __asm__ volatile ("csrr %0, stvec" : "=r"(value));
    return value;
}

inline void Riscv::writeStvec(uint64 value) {
    __asm__ volatile ("csrw stvec, %0" : : "r"(value));
    80001ebc:	10579073          	csrw	stvec,a5
    MemoryAllocator::mem_init();
    80001ec0:	00000097          	auipc	ra,0x0
    80001ec4:	6e4080e7          	jalr	1764(ra) # 800025a4 <_ZN15MemoryAllocator8mem_initEv>

    thread_create(&mainThread, nullptr, nullptr); // main
    80001ec8:	00009497          	auipc	s1,0x9
    80001ecc:	5a848493          	addi	s1,s1,1448 # 8000b470 <mainThread>
    80001ed0:	00000613          	li	a2,0
    80001ed4:	00000593          	li	a1,0
    80001ed8:	00048513          	mv	a0,s1
    80001edc:	fffff097          	auipc	ra,0xfffff
    80001ee0:	760080e7          	jalr	1888(ra) # 8000163c <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::running = mainThread;
    80001ee4:	0004b703          	ld	a4,0(s1)
    80001ee8:	00009797          	auipc	a5,0x9
    80001eec:	5207b783          	ld	a5,1312(a5) # 8000b408 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001ef0:	00e7b023          	sd	a4,0(a5)

    thread_create(&userMainThread, userWrapper, nullptr);
    80001ef4:	00000613          	li	a2,0
    80001ef8:	00000597          	auipc	a1,0x0
    80001efc:	f8058593          	addi	a1,a1,-128 # 80001e78 <_Z11userWrapperPv>
    80001f00:	00009517          	auipc	a0,0x9
    80001f04:	57850513          	addi	a0,a0,1400 # 8000b478 <userMainThread>
    80001f08:	fffff097          	auipc	ra,0xfffff
    80001f0c:	734080e7          	jalr	1844(ra) # 8000163c <_Z13thread_createPP3TCBPFvPvES2_>

    while (!userMainThread->isFinished()) thread_dispatch();
    80001f10:	00009797          	auipc	a5,0x9
    80001f14:	5687b783          	ld	a5,1384(a5) # 8000b478 <userMainThread>
    bool isFinished()  { return finished; }
    80001f18:	0307c783          	lbu	a5,48(a5)
    80001f1c:	00079863          	bnez	a5,80001f2c <main+0x8c>
    80001f20:	fffff097          	auipc	ra,0xfffff
    80001f24:	7ec080e7          	jalr	2028(ra) # 8000170c <_Z15thread_dispatchv>
    80001f28:	fe9ff06f          	j	80001f10 <main+0x70>

    return 0;
}
    80001f2c:	00000513          	li	a0,0
    80001f30:	01813083          	ld	ra,24(sp)
    80001f34:	01013403          	ld	s0,16(sp)
    80001f38:	00813483          	ld	s1,8(sp)
    80001f3c:	02010113          	addi	sp,sp,32
    80001f40:	00008067          	ret

0000000080001f44 <_ZN3TCBC1EPFvPvES0_S0_>:
#include "../h/tcb.hpp"

int TCB::id = 0;
TCB *TCB::running = nullptr;

TCB::TCB(body routine, void* arg, void* stack)
    80001f44:	fe010113          	addi	sp,sp,-32
    80001f48:	00113c23          	sd	ra,24(sp)
    80001f4c:	00813823          	sd	s0,16(sp)
    80001f50:	00913423          	sd	s1,8(sp)
    80001f54:	01213023          	sd	s2,0(sp)
    80001f58:	02010413          	addi	s0,sp,32
    80001f5c:	00050493          	mv	s1,a0
    80001f60:	00058913          	mv	s2,a1
        : t_ID(++id), routine(routine), arg(arg), finished(false), blocked(false) {
    80001f64:	00009717          	auipc	a4,0x9
    80001f68:	51c70713          	addi	a4,a4,1308 # 8000b480 <_ZN3TCB2idE>
    80001f6c:	00072783          	lw	a5,0(a4)
    80001f70:	0017879b          	addiw	a5,a5,1
    80001f74:	0007869b          	sext.w	a3,a5
    80001f78:	00f72023          	sw	a5,0(a4)
    80001f7c:	00d53023          	sd	a3,0(a0)
    80001f80:	00b53423          	sd	a1,8(a0)
    80001f84:	00c53c23          	sd	a2,24(a0)
    80001f88:	02050823          	sb	zero,48(a0)
    80001f8c:	020508a3          	sb	zero,49(a0)

    this->stack = (routine != nullptr) ? new uint64[DEFAULT_STACK_SIZE] : nullptr;
    80001f90:	04058463          	beqz	a1,80001fd8 <_ZN3TCBC1EPFvPvES0_S0_+0x94>
    80001f94:	00008537          	lui	a0,0x8
    80001f98:	00000097          	auipc	ra,0x0
    80001f9c:	e68080e7          	jalr	-408(ra) # 80001e00 <_Znam>
    80001fa0:	00a4b823          	sd	a0,16(s1)

    this->context = {
            (uint64)&TCB::threadWrapper,
            (routine != nullptr) ? (uint64)&this->stack[DEFAULT_STACK_SIZE] : 0
    80001fa4:	02090e63          	beqz	s2,80001fe0 <_ZN3TCBC1EPFvPvES0_S0_+0x9c>
    80001fa8:	000087b7          	lui	a5,0x8
    80001fac:	00f50533          	add	a0,a0,a5
    this->context = {
    80001fb0:	00000797          	auipc	a5,0x0
    80001fb4:	29c78793          	addi	a5,a5,668 # 8000224c <_ZN3TCB13threadWrapperEv>
    80001fb8:	02f4b023          	sd	a5,32(s1)
    80001fbc:	02a4b423          	sd	a0,40(s1)
    };
}
    80001fc0:	01813083          	ld	ra,24(sp)
    80001fc4:	01013403          	ld	s0,16(sp)
    80001fc8:	00813483          	ld	s1,8(sp)
    80001fcc:	00013903          	ld	s2,0(sp)
    80001fd0:	02010113          	addi	sp,sp,32
    80001fd4:	00008067          	ret
    this->stack = (routine != nullptr) ? new uint64[DEFAULT_STACK_SIZE] : nullptr;
    80001fd8:	00000513          	li	a0,0
    80001fdc:	fc5ff06f          	j	80001fa0 <_ZN3TCBC1EPFvPvES0_S0_+0x5c>
            (routine != nullptr) ? (uint64)&this->stack[DEFAULT_STACK_SIZE] : 0
    80001fe0:	00000513          	li	a0,0
    80001fe4:	fcdff06f          	j	80001fb0 <_ZN3TCBC1EPFvPvES0_S0_+0x6c>

0000000080001fe8 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t size) {
    80001fe8:	ff010113          	addi	sp,sp,-16
    80001fec:	00113423          	sd	ra,8(sp)
    80001ff0:	00813023          	sd	s0,0(sp)
    80001ff4:	01010413          	addi	s0,sp,16
    size_t numOfBlocks=(size + sizeof(MemoryAllocator::FullBlock) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001ff8:	05750513          	addi	a0,a0,87 # 8057 <_entry-0x7fff7fa9>
    return MemoryAllocator::mem_alloc(numOfBlocks);
    80001ffc:	00655513          	srli	a0,a0,0x6
    80002000:	00000097          	auipc	ra,0x0
    80002004:	628080e7          	jalr	1576(ra) # 80002628 <_ZN15MemoryAllocator9mem_allocEm>
}
    80002008:	00813083          	ld	ra,8(sp)
    8000200c:	00013403          	ld	s0,0(sp)
    80002010:	01010113          	addi	sp,sp,16
    80002014:	00008067          	ret

0000000080002018 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *ptr) {
    80002018:	ff010113          	addi	sp,sp,-16
    8000201c:	00113423          	sd	ra,8(sp)
    80002020:	00813023          	sd	s0,0(sp)
    80002024:	01010413          	addi	s0,sp,16
    MemoryAllocator::mem_free(ptr);
    80002028:	00000097          	auipc	ra,0x0
    8000202c:	7c8080e7          	jalr	1992(ra) # 800027f0 <_ZN15MemoryAllocator8mem_freeEPv>
}
    80002030:	00813083          	ld	ra,8(sp)
    80002034:	00013403          	ld	s0,0(sp)
    80002038:	01010113          	addi	sp,sp,16
    8000203c:	00008067          	ret

0000000080002040 <_ZN3TCB5yieldEPS_S0_>:
    if (running->isFinished()) delete running;
    running=Scheduler::get();
    /*if(old!=running)*/ yield(old, running);
}

void TCB::yield(TCB* oldRunning, TCB* newRunning) {
    80002040:	fe010113          	addi	sp,sp,-32
    80002044:	00113c23          	sd	ra,24(sp)
    80002048:	00813823          	sd	s0,16(sp)
    8000204c:	00913423          	sd	s1,8(sp)
    80002050:	02010413          	addi	s0,sp,32
    80002054:	00050493          	mv	s1,a0

    Riscv::push();
    80002058:	fffff097          	auipc	ra,0xfffff
    8000205c:	fa8080e7          	jalr	-88(ra) # 80001000 <_ZN5Riscv4pushEv>
    contextSwitch(&oldRunning->context, &running->context);
    80002060:	00009597          	auipc	a1,0x9
    80002064:	4285b583          	ld	a1,1064(a1) # 8000b488 <_ZN3TCB7runningE>
    80002068:	02058593          	addi	a1,a1,32
    8000206c:	02048513          	addi	a0,s1,32
    80002070:	fffff097          	auipc	ra,0xfffff
    80002074:	190080e7          	jalr	400(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    Riscv::pop();
    80002078:	fffff097          	auipc	ra,0xfffff
    8000207c:	004080e7          	jalr	4(ra) # 8000107c <_ZN5Riscv3popEv>
}
    80002080:	01813083          	ld	ra,24(sp)
    80002084:	01013403          	ld	s0,16(sp)
    80002088:	00813483          	ld	s1,8(sp)
    8000208c:	02010113          	addi	sp,sp,32
    80002090:	00008067          	ret

0000000080002094 <_ZN3TCB8dispatchEv>:
void TCB::dispatch(){
    80002094:	fe010113          	addi	sp,sp,-32
    80002098:	00113c23          	sd	ra,24(sp)
    8000209c:	00813823          	sd	s0,16(sp)
    800020a0:	00913423          	sd	s1,8(sp)
    800020a4:	01213023          	sd	s2,0(sp)
    800020a8:	02010413          	addi	s0,sp,32
    TCB *old=running;
    800020ac:	00009497          	auipc	s1,0x9
    800020b0:	3dc4b483          	ld	s1,988(s1) # 8000b488 <_ZN3TCB7runningE>
    800020b4:	0304c783          	lbu	a5,48(s1)
    if (!running->isFinished() && !running->isBlocked()) {
    800020b8:	00079663          	bnez	a5,800020c4 <_ZN3TCB8dispatchEv+0x30>
    bool isBlocked()  { return blocked; }
    800020bc:	0314c783          	lbu	a5,49(s1)
    800020c0:	06078463          	beqz	a5,80002128 <_ZN3TCB8dispatchEv+0x94>
    if (running->isFinished()) delete running;
    800020c4:	00009917          	auipc	s2,0x9
    800020c8:	3c493903          	ld	s2,964(s2) # 8000b488 <_ZN3TCB7runningE>
    bool isFinished()  { return finished; }
    800020cc:	03094783          	lbu	a5,48(s2)
    800020d0:	02078063          	beqz	a5,800020f0 <_ZN3TCB8dispatchEv+0x5c>
    800020d4:	00090e63          	beqz	s2,800020f0 <_ZN3TCB8dispatchEv+0x5c>
    ~TCB() { MemoryAllocator::mem_free(this->stack); }
    800020d8:	01093503          	ld	a0,16(s2)
    800020dc:	00000097          	auipc	ra,0x0
    800020e0:	714080e7          	jalr	1812(ra) # 800027f0 <_ZN15MemoryAllocator8mem_freeEPv>
    800020e4:	00090513          	mv	a0,s2
    800020e8:	00000097          	auipc	ra,0x0
    800020ec:	f30080e7          	jalr	-208(ra) # 80002018 <_ZN3TCBdlEPv>
    running=Scheduler::get();
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	b88080e7          	jalr	-1144(ra) # 80001c78 <_ZN9Scheduler3getEv>
    800020f8:	00050593          	mv	a1,a0
    800020fc:	00009797          	auipc	a5,0x9
    80002100:	38a7b623          	sd	a0,908(a5) # 8000b488 <_ZN3TCB7runningE>
    /*if(old!=running)*/ yield(old, running);
    80002104:	00048513          	mv	a0,s1
    80002108:	00000097          	auipc	ra,0x0
    8000210c:	f38080e7          	jalr	-200(ra) # 80002040 <_ZN3TCB5yieldEPS_S0_>
}
    80002110:	01813083          	ld	ra,24(sp)
    80002114:	01013403          	ld	s0,16(sp)
    80002118:	00813483          	ld	s1,8(sp)
    8000211c:	00013903          	ld	s2,0(sp)
    80002120:	02010113          	addi	sp,sp,32
    80002124:	00008067          	ret
        Scheduler::put(old);
    80002128:	00048513          	mv	a0,s1
    8000212c:	00000097          	auipc	ra,0x0
    80002130:	bb4080e7          	jalr	-1100(ra) # 80001ce0 <_ZN9Scheduler3putEP3TCB>
    80002134:	f91ff06f          	j	800020c4 <_ZN3TCB8dispatchEv+0x30>

0000000080002138 <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_>:

int TCB::createThread(TCB **handle, body routine, void *arg, void *stack)  {
    80002138:	fc010113          	addi	sp,sp,-64
    8000213c:	02113c23          	sd	ra,56(sp)
    80002140:	02813823          	sd	s0,48(sp)
    80002144:	02913423          	sd	s1,40(sp)
    80002148:	03213023          	sd	s2,32(sp)
    8000214c:	01313c23          	sd	s3,24(sp)
    80002150:	01413823          	sd	s4,16(sp)
    80002154:	01513423          	sd	s5,8(sp)
    80002158:	04010413          	addi	s0,sp,64
    8000215c:	00050993          	mv	s3,a0
    80002160:	00058913          	mv	s2,a1
    80002164:	00060a13          	mv	s4,a2
    80002168:	00068a93          	mv	s5,a3
    if (!(*handle = new TCB(routine, arg, stack))) {
    8000216c:	03800513          	li	a0,56
    80002170:	00000097          	auipc	ra,0x0
    80002174:	e78080e7          	jalr	-392(ra) # 80001fe8 <_ZN3TCBnwEm>
    80002178:	00050493          	mv	s1,a0
    8000217c:	000a8693          	mv	a3,s5
    80002180:	000a0613          	mv	a2,s4
    80002184:	00090593          	mv	a1,s2
    80002188:	00000097          	auipc	ra,0x0
    8000218c:	dbc080e7          	jalr	-580(ra) # 80001f44 <_ZN3TCBC1EPFvPvES0_S0_>
    80002190:	0099b023          	sd	s1,0(s3)
    80002194:	02048e63          	beqz	s1,800021d0 <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_+0x98>
        return -1;
    }
    if (routine) {
    80002198:	04090063          	beqz	s2,800021d8 <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_+0xa0>
        Scheduler::put(*handle);
    8000219c:	00048513          	mv	a0,s1
    800021a0:	00000097          	auipc	ra,0x0
    800021a4:	b40080e7          	jalr	-1216(ra) # 80001ce0 <_ZN9Scheduler3putEP3TCB>
    }
    return 0;
    800021a8:	00000513          	li	a0,0
}
    800021ac:	03813083          	ld	ra,56(sp)
    800021b0:	03013403          	ld	s0,48(sp)
    800021b4:	02813483          	ld	s1,40(sp)
    800021b8:	02013903          	ld	s2,32(sp)
    800021bc:	01813983          	ld	s3,24(sp)
    800021c0:	01013a03          	ld	s4,16(sp)
    800021c4:	00813a83          	ld	s5,8(sp)
    800021c8:	04010113          	addi	sp,sp,64
    800021cc:	00008067          	ret
        return -1;
    800021d0:	fff00513          	li	a0,-1
    800021d4:	fd9ff06f          	j	800021ac <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_+0x74>
    return 0;
    800021d8:	00000513          	li	a0,0
    800021dc:	fd1ff06f          	j	800021ac <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_+0x74>
    800021e0:	00050913          	mv	s2,a0
    if (!(*handle = new TCB(routine, arg, stack))) {
    800021e4:	00048513          	mv	a0,s1
    800021e8:	00000097          	auipc	ra,0x0
    800021ec:	e30080e7          	jalr	-464(ra) # 80002018 <_ZN3TCBdlEPv>
    800021f0:	00090513          	mv	a0,s2
    800021f4:	0000a097          	auipc	ra,0xa
    800021f8:	3d4080e7          	jalr	980(ra) # 8000c5c8 <_Unwind_Resume>

00000000800021fc <_ZN3TCB10threadExitEv>:

int TCB::threadExit() {
    if(!running || !running->isFinished()) return -1;
    800021fc:	00009797          	auipc	a5,0x9
    80002200:	28c7b783          	ld	a5,652(a5) # 8000b488 <_ZN3TCB7runningE>
    80002204:	02078c63          	beqz	a5,8000223c <_ZN3TCB10threadExitEv+0x40>
    bool isFinished()  { return finished; }
    80002208:	0307c783          	lbu	a5,48(a5)
    8000220c:	02078c63          	beqz	a5,80002244 <_ZN3TCB10threadExitEv+0x48>
int TCB::threadExit() {
    80002210:	ff010113          	addi	sp,sp,-16
    80002214:	00113423          	sd	ra,8(sp)
    80002218:	00813023          	sd	s0,0(sp)
    8000221c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002220:	fffff097          	auipc	ra,0xfffff
    80002224:	4ec080e7          	jalr	1260(ra) # 8000170c <_Z15thread_dispatchv>
    return 0;
    80002228:	00000513          	li	a0,0
}
    8000222c:	00813083          	ld	ra,8(sp)
    80002230:	00013403          	ld	s0,0(sp)
    80002234:	01010113          	addi	sp,sp,16
    80002238:	00008067          	ret
    if(!running || !running->isFinished()) return -1;
    8000223c:	fff00513          	li	a0,-1
    80002240:	00008067          	ret
    80002244:	fff00513          	li	a0,-1
}
    80002248:	00008067          	ret

000000008000224c <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper() {
    8000224c:	fe010113          	addi	sp,sp,-32
    80002250:	00113c23          	sd	ra,24(sp)
    80002254:	00813823          	sd	s0,16(sp)
    80002258:	00913423          	sd	s1,8(sp)
    8000225c:	02010413          	addi	s0,sp,32
    if (running->routine) {
    80002260:	00009797          	auipc	a5,0x9
    80002264:	2287b783          	ld	a5,552(a5) # 8000b488 <_ZN3TCB7runningE>
    80002268:	0087b783          	ld	a5,8(a5)
    8000226c:	02078863          	beqz	a5,8000229c <_ZN3TCB13threadWrapperEv+0x50>
        Riscv::popSppSpie();
    80002270:	00000097          	auipc	ra,0x0
    80002274:	08c080e7          	jalr	140(ra) # 800022fc <_ZN5Riscv10popSppSpieEv>
        running->routine(running->arg);
    80002278:	00009497          	auipc	s1,0x9
    8000227c:	20848493          	addi	s1,s1,520 # 8000b480 <_ZN3TCB2idE>
    80002280:	0084b783          	ld	a5,8(s1)
    80002284:	0087b703          	ld	a4,8(a5)
    80002288:	0187b503          	ld	a0,24(a5)
    8000228c:	000700e7          	jalr	a4
        running->setFinished(true);
    80002290:	0084b783          	ld	a5,8(s1)
    void setFinished(bool value) { finished = value; }
    80002294:	00100713          	li	a4,1
    80002298:	02e78823          	sb	a4,48(a5)
    }
    TCB::threadExit();
    8000229c:	00000097          	auipc	ra,0x0
    800022a0:	f60080e7          	jalr	-160(ra) # 800021fc <_ZN3TCB10threadExitEv>
}
    800022a4:	01813083          	ld	ra,24(sp)
    800022a8:	01013403          	ld	s0,16(sp)
    800022ac:	00813483          	ld	s1,8(sp)
    800022b0:	02010113          	addi	sp,sp,32
    800022b4:	00008067          	ret

00000000800022b8 <_Z8printStrPKc>:
#include "../h/SyscallC.hpp"
#include "../h/tcb.hpp"
#include "../h/Sem.hpp"


void printStr(const char* string) {
    800022b8:	fe010113          	addi	sp,sp,-32
    800022bc:	00113c23          	sd	ra,24(sp)
    800022c0:	00813823          	sd	s0,16(sp)
    800022c4:	00913423          	sd	s1,8(sp)
    800022c8:	02010413          	addi	s0,sp,32
    800022cc:	00050493          	mv	s1,a0
    while (*string) {
    800022d0:	0004c503          	lbu	a0,0(s1)
    800022d4:	00050a63          	beqz	a0,800022e8 <_Z8printStrPKc+0x30>
        __putc(*string);
    800022d8:	00006097          	auipc	ra,0x6
    800022dc:	ce4080e7          	jalr	-796(ra) # 80007fbc <__putc>
        string++;
    800022e0:	00148493          	addi	s1,s1,1
    while (*string) {
    800022e4:	fedff06f          	j	800022d0 <_Z8printStrPKc+0x18>
    }
}
    800022e8:	01813083          	ld	ra,24(sp)
    800022ec:	01013403          	ld	s0,16(sp)
    800022f0:	00813483          	ld	s1,8(sp)
    800022f4:	02010113          	addi	sp,sp,32
    800022f8:	00008067          	ret

00000000800022fc <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie(){
    800022fc:	ff010113          	addi	sp,sp,-16
    80002300:	00813423          	sd	s0,8(sp)
    80002304:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002308:	14109073          	csrw	sepc,ra
inline void Riscv::setSstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
}

inline void Riscv::clearSstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    8000230c:	10000793          	li	a5,256
    80002310:	1007b073          	csrc	sstatus,a5
    Riscv::clearSstatus(BitMaskSstatus::SSTATUS_SPP);
    __asm__ volatile ("sret");
    80002314:	10200073          	sret
}
    80002318:	00813403          	ld	s0,8(sp)
    8000231c:	01010113          	addi	sp,sp,16
    80002320:	00008067          	ret

0000000080002324 <_ZN5Riscv16interruptHandlerEv>:

void Riscv::interruptHandler(){
    80002324:	fa010113          	addi	sp,sp,-96
    80002328:	04113c23          	sd	ra,88(sp)
    8000232c:	04813823          	sd	s0,80(sp)
    80002330:	04913423          	sd	s1,72(sp)
    80002334:	05213023          	sd	s2,64(sp)
    80002338:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %0, scause" : "=r"(value));
    8000233c:	142027f3          	csrr	a5,scause
    80002340:	fcf43423          	sd	a5,-56(s0)
    return value;
    80002344:	fc843703          	ld	a4,-56(s0)

    uint64 scause = readScause();

    if(scause==uint64(InterruptType::SOFTWARE)) {
    80002348:	fff00793          	li	a5,-1
    8000234c:	03f79793          	slli	a5,a5,0x3f
    80002350:	00178793          	addi	a5,a5,1
    80002354:	0ef70863          	beq	a4,a5,80002444 <_ZN5Riscv16interruptHandlerEv+0x120>
        clearSip(BitMaskSip::SIP_SSIP);
    }
    else if(scause==uint64(InterruptType::EXTERNAL)){
    80002358:	fff00793          	li	a5,-1
    8000235c:	03f79793          	slli	a5,a5,0x3f
    80002360:	00978793          	addi	a5,a5,9
    80002364:	10f70063          	beq	a4,a5,80002464 <_ZN5Riscv16interruptHandlerEv+0x140>
        console_handler();
    }
    else if(scause==uint64(InterruptType::U_ECALL) || scause==uint64(InterruptType::S_ECALL)){
    80002368:	ff870713          	addi	a4,a4,-8
    8000236c:	00100793          	li	a5,1
    80002370:	22e7e063          	bltu	a5,a4,80002590 <_ZN5Riscv16interruptHandlerEv+0x26c>
    __asm__ volatile ("csrr %0, sepc" : "=r"(value));
    80002374:	141027f3          	csrr	a5,sepc
    80002378:	fcf43c23          	sd	a5,-40(s0)
    return value;
    8000237c:	fd843483          	ld	s1,-40(s0)
        uint64 volatile oc, arg1, arg2, arg3, arg4;

        uint64 sepc=readSepc()+4;
    80002380:	00448493          	addi	s1,s1,4
};

inline uint64 Riscv::readSstatus() {
    uint64 volatile value;
    __asm__ volatile ("csrr %0, sstatus" : "=r"(value));
    80002384:	100027f3          	csrr	a5,sstatus
    80002388:	fcf43823          	sd	a5,-48(s0)
    return value;
    8000238c:	fd043903          	ld	s2,-48(s0)
        uint64 sstatus=readSstatus();

        __asm__ volatile("mv %0, a0" : "=r"(oc));
    80002390:	00050793          	mv	a5,a0
    80002394:	faf43023          	sd	a5,-96(s0)

        if (static_cast<SyscallCodes>(oc) == SyscallCodes::MEM_ALLOC) {
    80002398:	fa043703          	ld	a4,-96(s0)
    8000239c:	00100793          	li	a5,1
    800023a0:	0cf70863          	beq	a4,a5,80002470 <_ZN5Riscv16interruptHandlerEv+0x14c>
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
            MemoryAllocator::mem_alloc((size_t)arg1);
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::MEM_FREE) {
    800023a4:	fa043703          	ld	a4,-96(s0)
    800023a8:	00200793          	li	a5,2
    800023ac:	0ef70263          	beq	a4,a5,80002490 <_ZN5Riscv16interruptHandlerEv+0x16c>
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
            MemoryAllocator::mem_free((void *)arg1);
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::THREAD_CREATE) {
    800023b0:	fa043703          	ld	a4,-96(s0)
    800023b4:	01100793          	li	a5,17
    800023b8:	0ef70863          	beq	a4,a5,800024a8 <_ZN5Riscv16interruptHandlerEv+0x184>
            __asm__ volatile("mv %0, a2" : "=r"(arg2));
            __asm__ volatile("mv %0, a3" : "=r"(arg3));
            __asm__ volatile("mv %0, a4" : "=r"(arg4));
            TCB::createThread((thread_t *)arg1, (body)arg2, (void *)arg3, (void *)arg4);
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::THREAD_EXIT) {
    800023bc:	fa043703          	ld	a4,-96(s0)
    800023c0:	01200793          	li	a5,18
    800023c4:	12f70063          	beq	a4,a5,800024e4 <_ZN5Riscv16interruptHandlerEv+0x1c0>
            TCB::threadExit();
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::THREAD_DISPATCH) {
    800023c8:	fa043703          	ld	a4,-96(s0)
    800023cc:	01300793          	li	a5,19
    800023d0:	12f70063          	beq	a4,a5,800024f0 <_ZN5Riscv16interruptHandlerEv+0x1cc>
            TCB::dispatch();
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::SEM_OPEN) {
    800023d4:	fa043703          	ld	a4,-96(s0)
    800023d8:	02100793          	li	a5,33
    800023dc:	12f70063          	beq	a4,a5,800024fc <_ZN5Riscv16interruptHandlerEv+0x1d8>
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
            __asm__ volatile("mv %0, a2" : "=r"(arg2));
            Sem::sem_open((sem_t*)arg1, (unsigned int)arg2);
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::SEM_CLOSE) {
    800023e0:	fa043703          	ld	a4,-96(s0)
    800023e4:	02200793          	li	a5,34
    800023e8:	12f70e63          	beq	a4,a5,80002524 <_ZN5Riscv16interruptHandlerEv+0x200>
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
            Sem::sem_close((sem_t)arg1);
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::SEM_WAIT) {
    800023ec:	fa043703          	ld	a4,-96(s0)
    800023f0:	02300793          	li	a5,35
    800023f4:	14f70463          	beq	a4,a5,8000253c <_ZN5Riscv16interruptHandlerEv+0x218>
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
            Sem::sem_wait((sem_t)arg1);
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::SEM_SIGNAL) {
    800023f8:	fa043703          	ld	a4,-96(s0)
    800023fc:	02400793          	li	a5,36
    80002400:	14f70a63          	beq	a4,a5,80002554 <_ZN5Riscv16interruptHandlerEv+0x230>
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
            Sem::sem_signal((sem_t)arg1);
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::SEM_TRYWAIT) {
    80002404:	fa043703          	ld	a4,-96(s0)
    80002408:	02600793          	li	a5,38
    8000240c:	16f70063          	beq	a4,a5,8000256c <_ZN5Riscv16interruptHandlerEv+0x248>
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
            Sem::sem_trywait((sem_t)arg1);
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::GETC) {
    80002410:	fa043703          	ld	a4,-96(s0)
    80002414:	04100793          	li	a5,65
    80002418:	16f70663          	beq	a4,a5,80002584 <_ZN5Riscv16interruptHandlerEv+0x260>
            __getc();
        }
        else if (static_cast<SyscallCodes>(oc) == SyscallCodes::PUTC) {
    8000241c:	fa043703          	ld	a4,-96(s0)
    80002420:	04200793          	li	a5,66
    80002424:	06f71063          	bne	a4,a5,80002484 <_ZN5Riscv16interruptHandlerEv+0x160>
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80002428:	00058793          	mv	a5,a1
    8000242c:	faf43423          	sd	a5,-88(s0)
            __putc(arg1);
    80002430:	fa843503          	ld	a0,-88(s0)
    80002434:	0ff57513          	andi	a0,a0,255
    80002438:	00006097          	auipc	ra,0x6
    8000243c:	b84080e7          	jalr	-1148(ra) # 80007fbc <__putc>
    80002440:	0440006f          	j	80002484 <_ZN5Riscv16interruptHandlerEv+0x160>
    __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80002444:	00200793          	li	a5,2
    80002448:	1447b073          	csrc	sip,a5
        writeSstatus(sstatus);
    }
    else{
        printStr("Error");
    }
}
    8000244c:	05813083          	ld	ra,88(sp)
    80002450:	05013403          	ld	s0,80(sp)
    80002454:	04813483          	ld	s1,72(sp)
    80002458:	04013903          	ld	s2,64(sp)
    8000245c:	06010113          	addi	sp,sp,96
    80002460:	00008067          	ret
        console_handler();
    80002464:	00006097          	auipc	ra,0x6
    80002468:	bcc080e7          	jalr	-1076(ra) # 80008030 <console_handler>
    8000246c:	fe1ff06f          	j	8000244c <_ZN5Riscv16interruptHandlerEv+0x128>
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80002470:	00058793          	mv	a5,a1
    80002474:	faf43423          	sd	a5,-88(s0)
            MemoryAllocator::mem_alloc((size_t)arg1);
    80002478:	fa843503          	ld	a0,-88(s0)
    8000247c:	00000097          	auipc	ra,0x0
    80002480:	1ac080e7          	jalr	428(ra) # 80002628 <_ZN15MemoryAllocator9mem_allocEm>
    __asm__ volatile ("csrw sepc, %0" : : "r"(value));
    80002484:	14149073          	csrw	sepc,s1
}

inline void Riscv::writeSstatus(uint64 value) {
    __asm__ volatile ("csrw sstatus, %0" : : "r"(value));
    80002488:	10091073          	csrw	sstatus,s2
}
    8000248c:	fc1ff06f          	j	8000244c <_ZN5Riscv16interruptHandlerEv+0x128>
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80002490:	00058793          	mv	a5,a1
    80002494:	faf43423          	sd	a5,-88(s0)
            MemoryAllocator::mem_free((void *)arg1);
    80002498:	fa843503          	ld	a0,-88(s0)
    8000249c:	00000097          	auipc	ra,0x0
    800024a0:	354080e7          	jalr	852(ra) # 800027f0 <_ZN15MemoryAllocator8mem_freeEPv>
    800024a4:	fe1ff06f          	j	80002484 <_ZN5Riscv16interruptHandlerEv+0x160>
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
    800024a8:	00058793          	mv	a5,a1
    800024ac:	faf43423          	sd	a5,-88(s0)
            __asm__ volatile("mv %0, a2" : "=r"(arg2));
    800024b0:	00060793          	mv	a5,a2
    800024b4:	faf43823          	sd	a5,-80(s0)
            __asm__ volatile("mv %0, a3" : "=r"(arg3));
    800024b8:	00068793          	mv	a5,a3
    800024bc:	faf43c23          	sd	a5,-72(s0)
            __asm__ volatile("mv %0, a4" : "=r"(arg4));
    800024c0:	00070793          	mv	a5,a4
    800024c4:	fcf43023          	sd	a5,-64(s0)
            TCB::createThread((thread_t *)arg1, (body)arg2, (void *)arg3, (void *)arg4);
    800024c8:	fa843503          	ld	a0,-88(s0)
    800024cc:	fb043583          	ld	a1,-80(s0)
    800024d0:	fb843603          	ld	a2,-72(s0)
    800024d4:	fc043683          	ld	a3,-64(s0)
    800024d8:	00000097          	auipc	ra,0x0
    800024dc:	c60080e7          	jalr	-928(ra) # 80002138 <_ZN3TCB12createThreadEPPS_PFvPvES2_S2_>
    800024e0:	fa5ff06f          	j	80002484 <_ZN5Riscv16interruptHandlerEv+0x160>
            TCB::threadExit();
    800024e4:	00000097          	auipc	ra,0x0
    800024e8:	d18080e7          	jalr	-744(ra) # 800021fc <_ZN3TCB10threadExitEv>
    800024ec:	f99ff06f          	j	80002484 <_ZN5Riscv16interruptHandlerEv+0x160>
            TCB::dispatch();
    800024f0:	00000097          	auipc	ra,0x0
    800024f4:	ba4080e7          	jalr	-1116(ra) # 80002094 <_ZN3TCB8dispatchEv>
    800024f8:	f8dff06f          	j	80002484 <_ZN5Riscv16interruptHandlerEv+0x160>
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
    800024fc:	00058793          	mv	a5,a1
    80002500:	faf43423          	sd	a5,-88(s0)
            __asm__ volatile("mv %0, a2" : "=r"(arg2));
    80002504:	00060793          	mv	a5,a2
    80002508:	faf43823          	sd	a5,-80(s0)
            Sem::sem_open((sem_t*)arg1, (unsigned int)arg2);
    8000250c:	fa843503          	ld	a0,-88(s0)
    80002510:	fb043583          	ld	a1,-80(s0)
    80002514:	0005859b          	sext.w	a1,a1
    80002518:	fffff097          	auipc	ra,0xfffff
    8000251c:	62c080e7          	jalr	1580(ra) # 80001b44 <_ZN3Sem8sem_openEPPS_j>
    80002520:	f65ff06f          	j	80002484 <_ZN5Riscv16interruptHandlerEv+0x160>
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80002524:	00058793          	mv	a5,a1
    80002528:	faf43423          	sd	a5,-88(s0)
            Sem::sem_close((sem_t)arg1);
    8000252c:	fa843503          	ld	a0,-88(s0)
    80002530:	fffff097          	auipc	ra,0xfffff
    80002534:	6a0080e7          	jalr	1696(ra) # 80001bd0 <_ZN3Sem9sem_closeEPS_>
    80002538:	f4dff06f          	j	80002484 <_ZN5Riscv16interruptHandlerEv+0x160>
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
    8000253c:	00058793          	mv	a5,a1
    80002540:	faf43423          	sd	a5,-88(s0)
            Sem::sem_wait((sem_t)arg1);
    80002544:	fa843503          	ld	a0,-88(s0)
    80002548:	fffff097          	auipc	ra,0xfffff
    8000254c:	4e0080e7          	jalr	1248(ra) # 80001a28 <_ZN3Sem8sem_waitEPS_>
    80002550:	f35ff06f          	j	80002484 <_ZN5Riscv16interruptHandlerEv+0x160>
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
    80002554:	00058793          	mv	a5,a1
    80002558:	faf43423          	sd	a5,-88(s0)
            Sem::sem_signal((sem_t)arg1);
    8000255c:	fa843503          	ld	a0,-88(s0)
    80002560:	fffff097          	auipc	ra,0xfffff
    80002564:	51c080e7          	jalr	1308(ra) # 80001a7c <_ZN3Sem10sem_signalEPS_>
    80002568:	f1dff06f          	j	80002484 <_ZN5Riscv16interruptHandlerEv+0x160>
            __asm__ volatile("mv %0, a1" : "=r"(arg1));
    8000256c:	00058793          	mv	a5,a1
    80002570:	faf43423          	sd	a5,-88(s0)
            Sem::sem_trywait((sem_t)arg1);
    80002574:	fa843503          	ld	a0,-88(s0)
    80002578:	fffff097          	auipc	ra,0xfffff
    8000257c:	558080e7          	jalr	1368(ra) # 80001ad0 <_ZN3Sem11sem_trywaitEPS_>
    80002580:	f05ff06f          	j	80002484 <_ZN5Riscv16interruptHandlerEv+0x160>
            __getc();
    80002584:	00006097          	auipc	ra,0x6
    80002588:	a74080e7          	jalr	-1420(ra) # 80007ff8 <__getc>
    8000258c:	ef9ff06f          	j	80002484 <_ZN5Riscv16interruptHandlerEv+0x160>
        printStr("Error");
    80002590:	00007517          	auipc	a0,0x7
    80002594:	a9050513          	addi	a0,a0,-1392 # 80009020 <CONSOLE_STATUS+0x10>
    80002598:	00000097          	auipc	ra,0x0
    8000259c:	d20080e7          	jalr	-736(ra) # 800022b8 <_Z8printStrPKc>
}
    800025a0:	eadff06f          	j	8000244c <_ZN5Riscv16interruptHandlerEv+0x128>

00000000800025a4 <_ZN15MemoryAllocator8mem_initEv>:
bool MemoryAllocator::initialized=false;
//const size_t freeMemSize= (size_t) (HEAP_END_ADDR) - (size_t) (HEAP_START_ADDR);

//OVDE MEM ALLOC PRIMA BR BLOKOVA

void MemoryAllocator::mem_init() {
    800025a4:	ff010113          	addi	sp,sp,-16
    800025a8:	00813423          	sd	s0,8(sp)
    800025ac:	01010413          	addi	s0,sp,16
    if(!initialized){
    800025b0:	00009797          	auipc	a5,0x9
    800025b4:	ee07c783          	lbu	a5,-288(a5) # 8000b490 <_ZN15MemoryAllocator11initializedE>
    800025b8:	06079263          	bnez	a5,8000261c <_ZN15MemoryAllocator8mem_initEv+0x78>
        initialized=true;
    800025bc:	00009797          	auipc	a5,0x9
    800025c0:	ed478793          	addi	a5,a5,-300 # 8000b490 <_ZN15MemoryAllocator11initializedE>
    800025c4:	00100713          	li	a4,1
    800025c8:	00e78023          	sb	a4,0(a5)
        freeHead = (FreeBlock*)((char*)HEAP_START_ADDR);
    800025cc:	00009697          	auipc	a3,0x9
    800025d0:	e246b683          	ld	a3,-476(a3) # 8000b3f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800025d4:	0006b703          	ld	a4,0(a3)
    800025d8:	00e7b423          	sd	a4,8(a5)
        freeHead->next=nullptr;
    800025dc:	00073023          	sd	zero,0(a4)
        freeHead->prev= nullptr;
    800025e0:	0087b703          	ld	a4,8(a5)
    800025e4:	00073423          	sd	zero,8(a4)
        size_t heap_size = (uint64)HEAP_END_ADDR-(uint64)HEAP_START_ADDR+1;
    800025e8:	00009797          	auipc	a5,0x9
    800025ec:	e287b783          	ld	a5,-472(a5) # 8000b410 <_GLOBAL_OFFSET_TABLE_+0x28>
    800025f0:	0007b783          	ld	a5,0(a5)
    800025f4:	0006b683          	ld	a3,0(a3)
    800025f8:	40d787b3          	sub	a5,a5,a3
    800025fc:	00178793          	addi	a5,a5,1
        if(heap_size%MEM_BLOCK_SIZE!=0){
    80002600:	03f7f693          	andi	a3,a5,63
    80002604:	00068663          	beqz	a3,80002610 <_ZN15MemoryAllocator8mem_initEv+0x6c>
            heap_size+=(MEM_BLOCK_SIZE-(heap_size%MEM_BLOCK_SIZE));
    80002608:	fc07f793          	andi	a5,a5,-64
    8000260c:	04078793          	addi	a5,a5,64
        }
        freeHead->size=heap_size/MEM_BLOCK_SIZE-1;  //U BLOKOVIMA
    80002610:	0067d793          	srli	a5,a5,0x6
    80002614:	fff78793          	addi	a5,a5,-1
    80002618:	00f73823          	sd	a5,16(a4)
        //freeHead->size=(size_t) (HEAP_END_ADDR) - (size_t) (HEAP_START_ADDR); //U BAJTOVIMA
    }
}
    8000261c:	00813403          	ld	s0,8(sp)
    80002620:	01010113          	addi	sp,sp,16
    80002624:	00008067          	ret

0000000080002628 <_ZN15MemoryAllocator9mem_allocEm>:

void* MemoryAllocator::mem_alloc(size_t size) {
    80002628:	ff010113          	addi	sp,sp,-16
    8000262c:	00813423          	sd	s0,8(sp)
    80002630:	01010413          	addi	s0,sp,16
    if(size<1) return nullptr;
    80002634:	14050c63          	beqz	a0,8000278c <_ZN15MemoryAllocator9mem_allocEm+0x164>
    80002638:	00050713          	mv	a4,a0
    size_t heap_size = (uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR;
    8000263c:	00009797          	auipc	a5,0x9
    80002640:	dd47b783          	ld	a5,-556(a5) # 8000b410 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002644:	0007b783          	ld	a5,0(a5)
    80002648:	00009697          	auipc	a3,0x9
    8000264c:	da86b683          	ld	a3,-600(a3) # 8000b3f0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002650:	0006b683          	ld	a3,0(a3)
    80002654:	40d787b3          	sub	a5,a5,a3
    if (heap_size % MEM_BLOCK_SIZE != 0) {
    80002658:	03f7f693          	andi	a3,a5,63
    8000265c:	00068663          	beqz	a3,80002668 <_ZN15MemoryAllocator9mem_allocEm+0x40>
        heap_size += (MEM_BLOCK_SIZE - (heap_size % MEM_BLOCK_SIZE));
    80002660:	fc07f793          	andi	a5,a5,-64
    80002664:	04078793          	addi	a5,a5,64
    }
    if(size>=heap_size/MEM_BLOCK_SIZE) return nullptr;
    80002668:	0067d793          	srli	a5,a5,0x6
    8000266c:	12f77463          	bgeu	a4,a5,80002794 <_ZN15MemoryAllocator9mem_allocEm+0x16c>

    for(FreeBlock* cur=freeHead; cur != 0; cur=cur->next ){
    80002670:	00009517          	auipc	a0,0x9
    80002674:	e2853503          	ld	a0,-472(a0) # 8000b498 <_ZN15MemoryAllocator8freeHeadE>
    80002678:	0e050a63          	beqz	a0,8000276c <_ZN15MemoryAllocator9mem_allocEm+0x144>
        if(cur->size < size) continue;
    8000267c:	01053783          	ld	a5,16(a0)
    80002680:	06e7e663          	bltu	a5,a4,800026ec <_ZN15MemoryAllocator9mem_allocEm+0xc4>
        if(cur->size==size) {
    80002684:	06e78863          	beq	a5,a4,800026f4 <_ZN15MemoryAllocator9mem_allocEm+0xcc>
                freeHead=cur->next;
            }if(cur->next){
                cur->next->prev=cur->prev;
            }
        }else{
            FreeBlock* fragment=(FreeBlock*)((char*)cur + (size) * MEM_BLOCK_SIZE);
    80002688:	00671793          	slli	a5,a4,0x6
    8000268c:	00f507b3          	add	a5,a0,a5
            fragment->next=cur->next;
    80002690:	00053683          	ld	a3,0(a0)
    80002694:	00d7b023          	sd	a3,0(a5)
            fragment->prev=cur->prev;
    80002698:	00853683          	ld	a3,8(a0)
    8000269c:	00d7b423          	sd	a3,8(a5)
            fragment->size= cur->size -size;
    800026a0:	01053683          	ld	a3,16(a0)
    800026a4:	40e686b3          	sub	a3,a3,a4
    800026a8:	00d7b823          	sd	a3,16(a5)
            if(cur->prev){
    800026ac:	00853683          	ld	a3,8(a0)
    800026b0:	06068c63          	beqz	a3,80002728 <_ZN15MemoryAllocator9mem_allocEm+0x100>
                cur->prev->next=fragment;
    800026b4:	00f6b023          	sd	a5,0(a3)
            }else{
                freeHead=fragment;
            }
            if(cur->next){
    800026b8:	00053683          	ld	a3,0(a0)
    800026bc:	00068463          	beqz	a3,800026c4 <_ZN15MemoryAllocator9mem_allocEm+0x9c>
                cur->next->prev=fragment;
    800026c0:	00f6b423          	sd	a5,8(a3)
            }
        }


        FullBlock* tmp;
        if(fullHead== nullptr || (char*)cur < (char*)fullHead){
    800026c4:	00009617          	auipc	a2,0x9
    800026c8:	ddc63603          	ld	a2,-548(a2) # 8000b4a0 <_ZN15MemoryAllocator8fullHeadE>
    800026cc:	06060463          	beqz	a2,80002734 <_ZN15MemoryAllocator9mem_allocEm+0x10c>
    800026d0:	06c56663          	bltu	a0,a2,8000273c <_ZN15MemoryAllocator9mem_allocEm+0x114>
            tmp=0;
        }
        else{
            for(tmp=fullHead; tmp->next && (char*)cur > (char*)tmp->next; tmp=tmp->next);
    800026d4:	00060793          	mv	a5,a2
    800026d8:	00078693          	mv	a3,a5
    800026dc:	0007b783          	ld	a5,0(a5)
    800026e0:	06078063          	beqz	a5,80002740 <_ZN15MemoryAllocator9mem_allocEm+0x118>
    800026e4:	fea7eae3          	bltu	a5,a0,800026d8 <_ZN15MemoryAllocator9mem_allocEm+0xb0>
    800026e8:	0580006f          	j	80002740 <_ZN15MemoryAllocator9mem_allocEm+0x118>
    for(FreeBlock* cur=freeHead; cur != 0; cur=cur->next ){
    800026ec:	00053503          	ld	a0,0(a0)
    800026f0:	f89ff06f          	j	80002678 <_ZN15MemoryAllocator9mem_allocEm+0x50>
            if(cur->prev){
    800026f4:	00853783          	ld	a5,8(a0)
    800026f8:	02078063          	beqz	a5,80002718 <_ZN15MemoryAllocator9mem_allocEm+0xf0>
                cur->prev->next=cur->next;
    800026fc:	00053683          	ld	a3,0(a0)
    80002700:	00d7b023          	sd	a3,0(a5)
            }if(cur->next){
    80002704:	00053783          	ld	a5,0(a0)
    80002708:	fa078ee3          	beqz	a5,800026c4 <_ZN15MemoryAllocator9mem_allocEm+0x9c>
                cur->next->prev=cur->prev;
    8000270c:	00853683          	ld	a3,8(a0)
    80002710:	00d7b423          	sd	a3,8(a5)
    80002714:	fb1ff06f          	j	800026c4 <_ZN15MemoryAllocator9mem_allocEm+0x9c>
                freeHead=cur->next;
    80002718:	00053783          	ld	a5,0(a0)
    8000271c:	00009697          	auipc	a3,0x9
    80002720:	d6f6be23          	sd	a5,-644(a3) # 8000b498 <_ZN15MemoryAllocator8freeHeadE>
    80002724:	fe1ff06f          	j	80002704 <_ZN15MemoryAllocator9mem_allocEm+0xdc>
                freeHead=fragment;
    80002728:	00009697          	auipc	a3,0x9
    8000272c:	d6f6b823          	sd	a5,-656(a3) # 8000b498 <_ZN15MemoryAllocator8freeHeadE>
    80002730:	f89ff06f          	j	800026b8 <_ZN15MemoryAllocator9mem_allocEm+0x90>
            tmp=0;
    80002734:	00060693          	mv	a3,a2
    80002738:	0080006f          	j	80002740 <_ZN15MemoryAllocator9mem_allocEm+0x118>
    8000273c:	00000693          	li	a3,0
        }
        FullBlock* newSeg= (FullBlock*)cur;
        newSeg->size= size;
    80002740:	00e53823          	sd	a4,16(a0)
        newSeg->prev=tmp;
    80002744:	00d53423          	sd	a3,8(a0)
        if(tmp){
    80002748:	02068863          	beqz	a3,80002778 <_ZN15MemoryAllocator9mem_allocEm+0x150>
            newSeg->next=tmp->next;
    8000274c:	0006b783          	ld	a5,0(a3)
    80002750:	00f53023          	sd	a5,0(a0)
        }else{
            newSeg->next=fullHead;
        }
        if(newSeg->next){
    80002754:	00053783          	ld	a5,0(a0)
    80002758:	00078463          	beqz	a5,80002760 <_ZN15MemoryAllocator9mem_allocEm+0x138>
            newSeg->next->prev=newSeg;
    8000275c:	00a7b423          	sd	a0,8(a5)
        }
        if(tmp){
    80002760:	02068063          	beqz	a3,80002780 <_ZN15MemoryAllocator9mem_allocEm+0x158>
            tmp->next=newSeg;
    80002764:	00a6b023          	sd	a0,0(a3)
        }
        else{
            fullHead=newSeg;
        }
        return (void*)((char*)cur + sizeof(FullBlock));
    80002768:	01850513          	addi	a0,a0,24
    }

    return nullptr;
}
    8000276c:	00813403          	ld	s0,8(sp)
    80002770:	01010113          	addi	sp,sp,16
    80002774:	00008067          	ret
            newSeg->next=fullHead;
    80002778:	00c53023          	sd	a2,0(a0)
    8000277c:	fd9ff06f          	j	80002754 <_ZN15MemoryAllocator9mem_allocEm+0x12c>
            fullHead=newSeg;
    80002780:	00009797          	auipc	a5,0x9
    80002784:	d2a7b023          	sd	a0,-736(a5) # 8000b4a0 <_ZN15MemoryAllocator8fullHeadE>
    80002788:	fe1ff06f          	j	80002768 <_ZN15MemoryAllocator9mem_allocEm+0x140>
    if(size<1) return nullptr;
    8000278c:	00000513          	li	a0,0
    80002790:	fddff06f          	j	8000276c <_ZN15MemoryAllocator9mem_allocEm+0x144>
    if(size>=heap_size/MEM_BLOCK_SIZE) return nullptr;
    80002794:	00000513          	li	a0,0
    80002798:	fd5ff06f          	j	8000276c <_ZN15MemoryAllocator9mem_allocEm+0x144>

000000008000279c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>:



void MemoryAllocator::tryToJoin(FreeBlock *block) {
    8000279c:	ff010113          	addi	sp,sp,-16
    800027a0:	00813423          	sd	s0,8(sp)
    800027a4:	01010413          	addi	s0,sp,16
    if(!block) return ;
    800027a8:	00050e63          	beqz	a0,800027c4 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    if(block->next && (char*)block+block->size*MEM_BLOCK_SIZE==(char*)(block->next)){
    800027ac:	00053783          	ld	a5,0(a0)
    800027b0:	00078a63          	beqz	a5,800027c4 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    800027b4:	01053683          	ld	a3,16(a0)
    800027b8:	00669713          	slli	a4,a3,0x6
    800027bc:	00e50733          	add	a4,a0,a4
    800027c0:	00e78863          	beq	a5,a4,800027d0 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x34>
        block->size+=block->next->size;
        block->next=block->next->next;
        if(block->next) block->next->prev=block;
    }
}
    800027c4:	00813403          	ld	s0,8(sp)
    800027c8:	01010113          	addi	sp,sp,16
    800027cc:	00008067          	ret
        block->size+=block->next->size;
    800027d0:	0107b703          	ld	a4,16(a5)
    800027d4:	00e686b3          	add	a3,a3,a4
    800027d8:	00d53823          	sd	a3,16(a0)
        block->next=block->next->next;
    800027dc:	0007b783          	ld	a5,0(a5)
    800027e0:	00f53023          	sd	a5,0(a0)
        if(block->next) block->next->prev=block;
    800027e4:	fe0780e3          	beqz	a5,800027c4 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>
    800027e8:	00a7b423          	sd	a0,8(a5)
    800027ec:	fd9ff06f          	j	800027c4 <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE+0x28>

00000000800027f0 <_ZN15MemoryAllocator8mem_freeEPv>:



    int MemoryAllocator::mem_free(void *addr) {
        if (addr == nullptr) return -1;
    800027f0:	12050063          	beqz	a0,80002910 <_ZN15MemoryAllocator8mem_freeEPv+0x120>
    800027f4:	00050713          	mv	a4,a0


        addr = (void*)((char*)addr - sizeof(FullBlock));
    800027f8:	fe850513          	addi	a0,a0,-24

        FullBlock* blk = (FullBlock*)addr;
        FullBlock* tmp = fullHead;
    800027fc:	00009797          	auipc	a5,0x9
    80002800:	ca47b783          	ld	a5,-860(a5) # 8000b4a0 <_ZN15MemoryAllocator8fullHeadE>
        bool found = false;
    80002804:	0080006f          	j	8000280c <_ZN15MemoryAllocator8mem_freeEPv+0x1c>
        while (tmp && blk >= tmp) {
            if (tmp == blk) {
                found = true;
                break;
            }
            tmp = tmp->next;
    80002808:	0007b783          	ld	a5,0(a5)
        while (tmp && blk >= tmp) {
    8000280c:	00078a63          	beqz	a5,80002820 <_ZN15MemoryAllocator8mem_freeEPv+0x30>
    80002810:	06f56863          	bltu	a0,a5,80002880 <_ZN15MemoryAllocator8mem_freeEPv+0x90>
            if (tmp == blk) {
    80002814:	fea79ae3          	bne	a5,a0,80002808 <_ZN15MemoryAllocator8mem_freeEPv+0x18>
                found = true;
    80002818:	00100793          	li	a5,1
    8000281c:	0080006f          	j	80002824 <_ZN15MemoryAllocator8mem_freeEPv+0x34>
        bool found = false;
    80002820:	00000793          	li	a5,0
        }

        if (!found) return -2;
    80002824:	0e078a63          	beqz	a5,80002918 <_ZN15MemoryAllocator8mem_freeEPv+0x128>
    int MemoryAllocator::mem_free(void *addr) {
    80002828:	fe010113          	addi	sp,sp,-32
    8000282c:	00113c23          	sd	ra,24(sp)
    80002830:	00813823          	sd	s0,16(sp)
    80002834:	00913423          	sd	s1,8(sp)
    80002838:	02010413          	addi	s0,sp,32


        if (blk->prev) {
    8000283c:	ff073783          	ld	a5,-16(a4)
    80002840:	04078463          	beqz	a5,80002888 <_ZN15MemoryAllocator8mem_freeEPv+0x98>
            blk->prev->next = blk->next;
    80002844:	fe873683          	ld	a3,-24(a4)
    80002848:	00d7b023          	sd	a3,0(a5)
        } else {
            fullHead = blk->next;
        }
        if (blk->next) {
    8000284c:	fe873783          	ld	a5,-24(a4)
    80002850:	00078663          	beqz	a5,8000285c <_ZN15MemoryAllocator8mem_freeEPv+0x6c>
            blk->next->prev = blk->prev;
    80002854:	ff073683          	ld	a3,-16(a4)
    80002858:	00d7b423          	sd	a3,8(a5)
        }


        FreeBlock* cur = nullptr;
        if (!freeHead || (char*)addr < (char*)freeHead) cur = nullptr;
    8000285c:	00009797          	auipc	a5,0x9
    80002860:	c3c7b783          	ld	a5,-964(a5) # 8000b498 <_ZN15MemoryAllocator8freeHeadE>
    80002864:	02078a63          	beqz	a5,80002898 <_ZN15MemoryAllocator8mem_freeEPv+0xa8>
    80002868:	02f56c63          	bltu	a0,a5,800028a0 <_ZN15MemoryAllocator8mem_freeEPv+0xb0>
        else {
            for (cur = freeHead; cur->next != nullptr && (char*)addr > (char*)cur->next; cur = cur->next);
    8000286c:	00078493          	mv	s1,a5
    80002870:	0007b783          	ld	a5,0(a5)
    80002874:	02078863          	beqz	a5,800028a4 <_ZN15MemoryAllocator8mem_freeEPv+0xb4>
    80002878:	fea7eae3          	bltu	a5,a0,8000286c <_ZN15MemoryAllocator8mem_freeEPv+0x7c>
    8000287c:	0280006f          	j	800028a4 <_ZN15MemoryAllocator8mem_freeEPv+0xb4>
        bool found = false;
    80002880:	00000793          	li	a5,0
    80002884:	fa1ff06f          	j	80002824 <_ZN15MemoryAllocator8mem_freeEPv+0x34>
            fullHead = blk->next;
    80002888:	fe873783          	ld	a5,-24(a4)
    8000288c:	00009697          	auipc	a3,0x9
    80002890:	c0f6ba23          	sd	a5,-1004(a3) # 8000b4a0 <_ZN15MemoryAllocator8fullHeadE>
    80002894:	fb9ff06f          	j	8000284c <_ZN15MemoryAllocator8mem_freeEPv+0x5c>
        if (!freeHead || (char*)addr < (char*)freeHead) cur = nullptr;
    80002898:	00078493          	mv	s1,a5
    8000289c:	0080006f          	j	800028a4 <_ZN15MemoryAllocator8mem_freeEPv+0xb4>
    800028a0:	00000493          	li	s1,0
        }


        FreeBlock* newSeg = (FreeBlock*)addr;
        newSeg->size = blk->size;
        newSeg->prev = cur;
    800028a4:	fe973823          	sd	s1,-16(a4)
        if (cur) newSeg->next = cur->next;
    800028a8:	04048663          	beqz	s1,800028f4 <_ZN15MemoryAllocator8mem_freeEPv+0x104>
    800028ac:	0004b783          	ld	a5,0(s1)
    800028b0:	fef73423          	sd	a5,-24(a4)
        else newSeg->next = freeHead;
        if (newSeg->next) newSeg->next->prev = newSeg;
    800028b4:	fe873783          	ld	a5,-24(a4)
    800028b8:	00078463          	beqz	a5,800028c0 <_ZN15MemoryAllocator8mem_freeEPv+0xd0>
    800028bc:	00a7b423          	sd	a0,8(a5)
        if (cur) cur->next = newSeg;
    800028c0:	04048263          	beqz	s1,80002904 <_ZN15MemoryAllocator8mem_freeEPv+0x114>
    800028c4:	00a4b023          	sd	a0,0(s1)
        else freeHead = newSeg;


        tryToJoin(newSeg);
    800028c8:	00000097          	auipc	ra,0x0
    800028cc:	ed4080e7          	jalr	-300(ra) # 8000279c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>
        tryToJoin(cur);
    800028d0:	00048513          	mv	a0,s1
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	ec8080e7          	jalr	-312(ra) # 8000279c <_ZN15MemoryAllocator9tryToJoinEPNS_9FreeBlockE>

        return 0;
    800028dc:	00000513          	li	a0,0
    }
    800028e0:	01813083          	ld	ra,24(sp)
    800028e4:	01013403          	ld	s0,16(sp)
    800028e8:	00813483          	ld	s1,8(sp)
    800028ec:	02010113          	addi	sp,sp,32
    800028f0:	00008067          	ret
        else newSeg->next = freeHead;
    800028f4:	00009797          	auipc	a5,0x9
    800028f8:	ba47b783          	ld	a5,-1116(a5) # 8000b498 <_ZN15MemoryAllocator8freeHeadE>
    800028fc:	fef73423          	sd	a5,-24(a4)
    80002900:	fb5ff06f          	j	800028b4 <_ZN15MemoryAllocator8mem_freeEPv+0xc4>
        else freeHead = newSeg;
    80002904:	00009797          	auipc	a5,0x9
    80002908:	b8a7ba23          	sd	a0,-1132(a5) # 8000b498 <_ZN15MemoryAllocator8freeHeadE>
    8000290c:	fbdff06f          	j	800028c8 <_ZN15MemoryAllocator8mem_freeEPv+0xd8>
        if (addr == nullptr) return -1;
    80002910:	fff00513          	li	a0,-1
    80002914:	00008067          	ret
        if (!found) return -2;
    80002918:	ffe00513          	li	a0,-2
    }
    8000291c:	00008067          	ret

0000000080002920 <_ZN15MemoryAllocator5printEv>:


void MemoryAllocator::print() {
    80002920:	fe010113          	addi	sp,sp,-32
    80002924:	00113c23          	sd	ra,24(sp)
    80002928:	00813823          	sd	s0,16(sp)
    8000292c:	00913423          	sd	s1,8(sp)
    80002930:	02010413          	addi	s0,sp,32
    for(FreeBlock* block=freeHead; block!= nullptr; block=block->next){
    80002934:	00009497          	auipc	s1,0x9
    80002938:	b644b483          	ld	s1,-1180(s1) # 8000b498 <_ZN15MemoryAllocator8freeHeadE>
    8000293c:	02048263          	beqz	s1,80002960 <_ZN15MemoryAllocator5printEv+0x40>
        __putc('f');
    80002940:	06600513          	li	a0,102
    80002944:	00005097          	auipc	ra,0x5
    80002948:	678080e7          	jalr	1656(ra) # 80007fbc <__putc>
        __putc('\n');
    8000294c:	00a00513          	li	a0,10
    80002950:	00005097          	auipc	ra,0x5
    80002954:	66c080e7          	jalr	1644(ra) # 80007fbc <__putc>
    for(FreeBlock* block=freeHead; block!= nullptr; block=block->next){
    80002958:	0004b483          	ld	s1,0(s1)
    8000295c:	fe1ff06f          	j	8000293c <_ZN15MemoryAllocator5printEv+0x1c>
    }
    for(FullBlock* b=fullHead; b!= nullptr; b=b->next){
    80002960:	00009497          	auipc	s1,0x9
    80002964:	b404b483          	ld	s1,-1216(s1) # 8000b4a0 <_ZN15MemoryAllocator8fullHeadE>
    80002968:	02048263          	beqz	s1,8000298c <_ZN15MemoryAllocator5printEv+0x6c>
        __putc('u');
    8000296c:	07500513          	li	a0,117
    80002970:	00005097          	auipc	ra,0x5
    80002974:	64c080e7          	jalr	1612(ra) # 80007fbc <__putc>
        __putc('\n');
    80002978:	00a00513          	li	a0,10
    8000297c:	00005097          	auipc	ra,0x5
    80002980:	640080e7          	jalr	1600(ra) # 80007fbc <__putc>
    for(FullBlock* b=fullHead; b!= nullptr; b=b->next){
    80002984:	0004b483          	ld	s1,0(s1)
    80002988:	fe1ff06f          	j	80002968 <_ZN15MemoryAllocator5printEv+0x48>
    }
}
    8000298c:	01813083          	ld	ra,24(sp)
    80002990:	01013403          	ld	s0,16(sp)
    80002994:	00813483          	ld	s1,8(sp)
    80002998:	02010113          	addi	sp,sp,32
    8000299c:	00008067          	ret

00000000800029a0 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800029a0:	fe010113          	addi	sp,sp,-32
    800029a4:	00113c23          	sd	ra,24(sp)
    800029a8:	00813823          	sd	s0,16(sp)
    800029ac:	00913423          	sd	s1,8(sp)
    800029b0:	01213023          	sd	s2,0(sp)
    800029b4:	02010413          	addi	s0,sp,32
    800029b8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800029bc:	00000913          	li	s2,0
    800029c0:	00c0006f          	j	800029cc <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x35) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800029c4:	fffff097          	auipc	ra,0xfffff
    800029c8:	d48080e7          	jalr	-696(ra) # 8000170c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x35) {
    800029cc:	fffff097          	auipc	ra,0xfffff
    800029d0:	ed4080e7          	jalr	-300(ra) # 800018a0 <_Z4getcv>
    800029d4:	0005059b          	sext.w	a1,a0
    800029d8:	03500793          	li	a5,53
    800029dc:	02f58a63          	beq	a1,a5,80002a10 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800029e0:	0084b503          	ld	a0,8(s1)
    800029e4:	00003097          	auipc	ra,0x3
    800029e8:	298080e7          	jalr	664(ra) # 80005c7c <_ZN6Buffer3putEi>
        i++;
    800029ec:	0019071b          	addiw	a4,s2,1
    800029f0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800029f4:	0004a683          	lw	a3,0(s1)
    800029f8:	0026979b          	slliw	a5,a3,0x2
    800029fc:	00d787bb          	addw	a5,a5,a3
    80002a00:	0017979b          	slliw	a5,a5,0x1
    80002a04:	02f767bb          	remw	a5,a4,a5
    80002a08:	fc0792e3          	bnez	a5,800029cc <_ZL16producerKeyboardPv+0x2c>
    80002a0c:	fb9ff06f          	j	800029c4 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002a10:	00100793          	li	a5,1
    80002a14:	00009717          	auipc	a4,0x9
    80002a18:	a8f72a23          	sw	a5,-1388(a4) # 8000b4a8 <_ZL9threadEnd>
    data->buffer->put('!');
    80002a1c:	02100593          	li	a1,33
    80002a20:	0084b503          	ld	a0,8(s1)
    80002a24:	00003097          	auipc	ra,0x3
    80002a28:	258080e7          	jalr	600(ra) # 80005c7c <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002a2c:	0104b503          	ld	a0,16(s1)
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	e2c080e7          	jalr	-468(ra) # 8000185c <_Z10sem_signalP3Sem>
}
    80002a38:	01813083          	ld	ra,24(sp)
    80002a3c:	01013403          	ld	s0,16(sp)
    80002a40:	00813483          	ld	s1,8(sp)
    80002a44:	00013903          	ld	s2,0(sp)
    80002a48:	02010113          	addi	sp,sp,32
    80002a4c:	00008067          	ret

0000000080002a50 <_ZL8producerPv>:

static void producer(void *arg) {
    80002a50:	fe010113          	addi	sp,sp,-32
    80002a54:	00113c23          	sd	ra,24(sp)
    80002a58:	00813823          	sd	s0,16(sp)
    80002a5c:	00913423          	sd	s1,8(sp)
    80002a60:	01213023          	sd	s2,0(sp)
    80002a64:	02010413          	addi	s0,sp,32
    80002a68:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002a6c:	00000913          	li	s2,0
    80002a70:	00c0006f          	j	80002a7c <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002a74:	fffff097          	auipc	ra,0xfffff
    80002a78:	c98080e7          	jalr	-872(ra) # 8000170c <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002a7c:	00009797          	auipc	a5,0x9
    80002a80:	a2c7a783          	lw	a5,-1492(a5) # 8000b4a8 <_ZL9threadEnd>
    80002a84:	02079e63          	bnez	a5,80002ac0 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002a88:	0004a583          	lw	a1,0(s1)
    80002a8c:	0305859b          	addiw	a1,a1,48
    80002a90:	0084b503          	ld	a0,8(s1)
    80002a94:	00003097          	auipc	ra,0x3
    80002a98:	1e8080e7          	jalr	488(ra) # 80005c7c <_ZN6Buffer3putEi>
        i++;
    80002a9c:	0019071b          	addiw	a4,s2,1
    80002aa0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002aa4:	0004a683          	lw	a3,0(s1)
    80002aa8:	0026979b          	slliw	a5,a3,0x2
    80002aac:	00d787bb          	addw	a5,a5,a3
    80002ab0:	0017979b          	slliw	a5,a5,0x1
    80002ab4:	02f767bb          	remw	a5,a4,a5
    80002ab8:	fc0792e3          	bnez	a5,80002a7c <_ZL8producerPv+0x2c>
    80002abc:	fb9ff06f          	j	80002a74 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002ac0:	0104b503          	ld	a0,16(s1)
    80002ac4:	fffff097          	auipc	ra,0xfffff
    80002ac8:	d98080e7          	jalr	-616(ra) # 8000185c <_Z10sem_signalP3Sem>
}
    80002acc:	01813083          	ld	ra,24(sp)
    80002ad0:	01013403          	ld	s0,16(sp)
    80002ad4:	00813483          	ld	s1,8(sp)
    80002ad8:	00013903          	ld	s2,0(sp)
    80002adc:	02010113          	addi	sp,sp,32
    80002ae0:	00008067          	ret

0000000080002ae4 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002ae4:	fd010113          	addi	sp,sp,-48
    80002ae8:	02113423          	sd	ra,40(sp)
    80002aec:	02813023          	sd	s0,32(sp)
    80002af0:	00913c23          	sd	s1,24(sp)
    80002af4:	01213823          	sd	s2,16(sp)
    80002af8:	01313423          	sd	s3,8(sp)
    80002afc:	03010413          	addi	s0,sp,48
    80002b00:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002b04:	00000993          	li	s3,0
    80002b08:	01c0006f          	j	80002b24 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002b0c:	fffff097          	auipc	ra,0xfffff
    80002b10:	c00080e7          	jalr	-1024(ra) # 8000170c <_Z15thread_dispatchv>
    80002b14:	0500006f          	j	80002b64 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002b18:	00a00513          	li	a0,10
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	dc8080e7          	jalr	-568(ra) # 800018e4 <_Z4putcc>
    while (!threadEnd) {
    80002b24:	00009797          	auipc	a5,0x9
    80002b28:	9847a783          	lw	a5,-1660(a5) # 8000b4a8 <_ZL9threadEnd>
    80002b2c:	06079063          	bnez	a5,80002b8c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002b30:	00893503          	ld	a0,8(s2)
    80002b34:	00003097          	auipc	ra,0x3
    80002b38:	1d8080e7          	jalr	472(ra) # 80005d0c <_ZN6Buffer3getEv>
        i++;
    80002b3c:	0019849b          	addiw	s1,s3,1
    80002b40:	0004899b          	sext.w	s3,s1
        putc(key);
    80002b44:	0ff57513          	andi	a0,a0,255
    80002b48:	fffff097          	auipc	ra,0xfffff
    80002b4c:	d9c080e7          	jalr	-612(ra) # 800018e4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002b50:	00092703          	lw	a4,0(s2)
    80002b54:	0027179b          	slliw	a5,a4,0x2
    80002b58:	00e787bb          	addw	a5,a5,a4
    80002b5c:	02f4e7bb          	remw	a5,s1,a5
    80002b60:	fa0786e3          	beqz	a5,80002b0c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002b64:	05000793          	li	a5,80
    80002b68:	02f4e4bb          	remw	s1,s1,a5
    80002b6c:	fa049ce3          	bnez	s1,80002b24 <_ZL8consumerPv+0x40>
    80002b70:	fa9ff06f          	j	80002b18 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002b74:	00893503          	ld	a0,8(s2)
    80002b78:	00003097          	auipc	ra,0x3
    80002b7c:	194080e7          	jalr	404(ra) # 80005d0c <_ZN6Buffer3getEv>
        putc(key);
    80002b80:	0ff57513          	andi	a0,a0,255
    80002b84:	fffff097          	auipc	ra,0xfffff
    80002b88:	d60080e7          	jalr	-672(ra) # 800018e4 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002b8c:	00893503          	ld	a0,8(s2)
    80002b90:	00003097          	auipc	ra,0x3
    80002b94:	208080e7          	jalr	520(ra) # 80005d98 <_ZN6Buffer6getCntEv>
    80002b98:	fca04ee3          	bgtz	a0,80002b74 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002b9c:	01093503          	ld	a0,16(s2)
    80002ba0:	fffff097          	auipc	ra,0xfffff
    80002ba4:	cbc080e7          	jalr	-836(ra) # 8000185c <_Z10sem_signalP3Sem>
}
    80002ba8:	02813083          	ld	ra,40(sp)
    80002bac:	02013403          	ld	s0,32(sp)
    80002bb0:	01813483          	ld	s1,24(sp)
    80002bb4:	01013903          	ld	s2,16(sp)
    80002bb8:	00813983          	ld	s3,8(sp)
    80002bbc:	03010113          	addi	sp,sp,48
    80002bc0:	00008067          	ret

0000000080002bc4 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002bc4:	f9010113          	addi	sp,sp,-112
    80002bc8:	06113423          	sd	ra,104(sp)
    80002bcc:	06813023          	sd	s0,96(sp)
    80002bd0:	04913c23          	sd	s1,88(sp)
    80002bd4:	05213823          	sd	s2,80(sp)
    80002bd8:	05313423          	sd	s3,72(sp)
    80002bdc:	05413023          	sd	s4,64(sp)
    80002be0:	03513c23          	sd	s5,56(sp)
    80002be4:	03613823          	sd	s6,48(sp)
    80002be8:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002bec:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002bf0:	00006517          	auipc	a0,0x6
    80002bf4:	43850513          	addi	a0,a0,1080 # 80009028 <CONSOLE_STATUS+0x18>
    80002bf8:	00002097          	auipc	ra,0x2
    80002bfc:	1f0080e7          	jalr	496(ra) # 80004de8 <_Z11printStringPKc>
    getString(input, 30);
    80002c00:	01e00593          	li	a1,30
    80002c04:	fa040493          	addi	s1,s0,-96
    80002c08:	00048513          	mv	a0,s1
    80002c0c:	00002097          	auipc	ra,0x2
    80002c10:	264080e7          	jalr	612(ra) # 80004e70 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002c14:	00048513          	mv	a0,s1
    80002c18:	00002097          	auipc	ra,0x2
    80002c1c:	330080e7          	jalr	816(ra) # 80004f48 <_Z11stringToIntPKc>
    80002c20:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002c24:	00006517          	auipc	a0,0x6
    80002c28:	42450513          	addi	a0,a0,1060 # 80009048 <CONSOLE_STATUS+0x38>
    80002c2c:	00002097          	auipc	ra,0x2
    80002c30:	1bc080e7          	jalr	444(ra) # 80004de8 <_Z11printStringPKc>
    getString(input, 30);
    80002c34:	01e00593          	li	a1,30
    80002c38:	00048513          	mv	a0,s1
    80002c3c:	00002097          	auipc	ra,0x2
    80002c40:	234080e7          	jalr	564(ra) # 80004e70 <_Z9getStringPci>
    n = stringToInt(input);
    80002c44:	00048513          	mv	a0,s1
    80002c48:	00002097          	auipc	ra,0x2
    80002c4c:	300080e7          	jalr	768(ra) # 80004f48 <_Z11stringToIntPKc>
    80002c50:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002c54:	00006517          	auipc	a0,0x6
    80002c58:	41450513          	addi	a0,a0,1044 # 80009068 <CONSOLE_STATUS+0x58>
    80002c5c:	00002097          	auipc	ra,0x2
    80002c60:	18c080e7          	jalr	396(ra) # 80004de8 <_Z11printStringPKc>
    80002c64:	00000613          	li	a2,0
    80002c68:	00a00593          	li	a1,10
    80002c6c:	00090513          	mv	a0,s2
    80002c70:	00002097          	auipc	ra,0x2
    80002c74:	328080e7          	jalr	808(ra) # 80004f98 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002c78:	00006517          	auipc	a0,0x6
    80002c7c:	40850513          	addi	a0,a0,1032 # 80009080 <CONSOLE_STATUS+0x70>
    80002c80:	00002097          	auipc	ra,0x2
    80002c84:	168080e7          	jalr	360(ra) # 80004de8 <_Z11printStringPKc>
    80002c88:	00000613          	li	a2,0
    80002c8c:	00a00593          	li	a1,10
    80002c90:	00048513          	mv	a0,s1
    80002c94:	00002097          	auipc	ra,0x2
    80002c98:	304080e7          	jalr	772(ra) # 80004f98 <_Z8printIntiii>
    printString(".\n");
    80002c9c:	00006517          	auipc	a0,0x6
    80002ca0:	3fc50513          	addi	a0,a0,1020 # 80009098 <CONSOLE_STATUS+0x88>
    80002ca4:	00002097          	auipc	ra,0x2
    80002ca8:	144080e7          	jalr	324(ra) # 80004de8 <_Z11printStringPKc>
    if(threadNum > n) {
    80002cac:	0324c463          	blt	s1,s2,80002cd4 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002cb0:	03205c63          	blez	s2,80002ce8 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002cb4:	03800513          	li	a0,56
    80002cb8:	fffff097          	auipc	ra,0xfffff
    80002cbc:	120080e7          	jalr	288(ra) # 80001dd8 <_Znwm>
    80002cc0:	00050a13          	mv	s4,a0
    80002cc4:	00048593          	mv	a1,s1
    80002cc8:	00003097          	auipc	ra,0x3
    80002ccc:	f18080e7          	jalr	-232(ra) # 80005be0 <_ZN6BufferC1Ei>
    80002cd0:	0300006f          	j	80002d00 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002cd4:	00006517          	auipc	a0,0x6
    80002cd8:	3cc50513          	addi	a0,a0,972 # 800090a0 <CONSOLE_STATUS+0x90>
    80002cdc:	00002097          	auipc	ra,0x2
    80002ce0:	10c080e7          	jalr	268(ra) # 80004de8 <_Z11printStringPKc>
        return;
    80002ce4:	0140006f          	j	80002cf8 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002ce8:	00006517          	auipc	a0,0x6
    80002cec:	3f850513          	addi	a0,a0,1016 # 800090e0 <CONSOLE_STATUS+0xd0>
    80002cf0:	00002097          	auipc	ra,0x2
    80002cf4:	0f8080e7          	jalr	248(ra) # 80004de8 <_Z11printStringPKc>
        return;
    80002cf8:	000b0113          	mv	sp,s6
    80002cfc:	1500006f          	j	80002e4c <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002d00:	00000593          	li	a1,0
    80002d04:	00008517          	auipc	a0,0x8
    80002d08:	7ac50513          	addi	a0,a0,1964 # 8000b4b0 <_ZL10waitForAll>
    80002d0c:	fffff097          	auipc	ra,0xfffff
    80002d10:	a3c080e7          	jalr	-1476(ra) # 80001748 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80002d14:	00391793          	slli	a5,s2,0x3
    80002d18:	00f78793          	addi	a5,a5,15
    80002d1c:	ff07f793          	andi	a5,a5,-16
    80002d20:	40f10133          	sub	sp,sp,a5
    80002d24:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002d28:	0019071b          	addiw	a4,s2,1
    80002d2c:	00171793          	slli	a5,a4,0x1
    80002d30:	00e787b3          	add	a5,a5,a4
    80002d34:	00379793          	slli	a5,a5,0x3
    80002d38:	00f78793          	addi	a5,a5,15
    80002d3c:	ff07f793          	andi	a5,a5,-16
    80002d40:	40f10133          	sub	sp,sp,a5
    80002d44:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002d48:	00191613          	slli	a2,s2,0x1
    80002d4c:	012607b3          	add	a5,a2,s2
    80002d50:	00379793          	slli	a5,a5,0x3
    80002d54:	00f987b3          	add	a5,s3,a5
    80002d58:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002d5c:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002d60:	00008717          	auipc	a4,0x8
    80002d64:	75073703          	ld	a4,1872(a4) # 8000b4b0 <_ZL10waitForAll>
    80002d68:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002d6c:	00078613          	mv	a2,a5
    80002d70:	00000597          	auipc	a1,0x0
    80002d74:	d7458593          	addi	a1,a1,-652 # 80002ae4 <_ZL8consumerPv>
    80002d78:	f9840513          	addi	a0,s0,-104
    80002d7c:	fffff097          	auipc	ra,0xfffff
    80002d80:	8c0080e7          	jalr	-1856(ra) # 8000163c <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002d84:	00000493          	li	s1,0
    80002d88:	0280006f          	j	80002db0 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002d8c:	00000597          	auipc	a1,0x0
    80002d90:	c1458593          	addi	a1,a1,-1004 # 800029a0 <_ZL16producerKeyboardPv>
                      data + i);
    80002d94:	00179613          	slli	a2,a5,0x1
    80002d98:	00f60633          	add	a2,a2,a5
    80002d9c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002da0:	00c98633          	add	a2,s3,a2
    80002da4:	fffff097          	auipc	ra,0xfffff
    80002da8:	898080e7          	jalr	-1896(ra) # 8000163c <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002dac:	0014849b          	addiw	s1,s1,1
    80002db0:	0524d263          	bge	s1,s2,80002df4 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002db4:	00149793          	slli	a5,s1,0x1
    80002db8:	009787b3          	add	a5,a5,s1
    80002dbc:	00379793          	slli	a5,a5,0x3
    80002dc0:	00f987b3          	add	a5,s3,a5
    80002dc4:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002dc8:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002dcc:	00008717          	auipc	a4,0x8
    80002dd0:	6e473703          	ld	a4,1764(a4) # 8000b4b0 <_ZL10waitForAll>
    80002dd4:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002dd8:	00048793          	mv	a5,s1
    80002ddc:	00349513          	slli	a0,s1,0x3
    80002de0:	00aa8533          	add	a0,s5,a0
    80002de4:	fa9054e3          	blez	s1,80002d8c <_Z22producerConsumer_C_APIv+0x1c8>
    80002de8:	00000597          	auipc	a1,0x0
    80002dec:	c6858593          	addi	a1,a1,-920 # 80002a50 <_ZL8producerPv>
    80002df0:	fa5ff06f          	j	80002d94 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002df4:	fffff097          	auipc	ra,0xfffff
    80002df8:	918080e7          	jalr	-1768(ra) # 8000170c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002dfc:	00000493          	li	s1,0
    80002e00:	00994e63          	blt	s2,s1,80002e1c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002e04:	00008517          	auipc	a0,0x8
    80002e08:	6ac53503          	ld	a0,1708(a0) # 8000b4b0 <_ZL10waitForAll>
    80002e0c:	fffff097          	auipc	ra,0xfffff
    80002e10:	9c8080e7          	jalr	-1592(ra) # 800017d4 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80002e14:	0014849b          	addiw	s1,s1,1
    80002e18:	fe9ff06f          	j	80002e00 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002e1c:	00008517          	auipc	a0,0x8
    80002e20:	69453503          	ld	a0,1684(a0) # 8000b4b0 <_ZL10waitForAll>
    80002e24:	fffff097          	auipc	ra,0xfffff
    80002e28:	96c080e7          	jalr	-1684(ra) # 80001790 <_Z9sem_closeP3Sem>
    delete buffer;
    80002e2c:	000a0e63          	beqz	s4,80002e48 <_Z22producerConsumer_C_APIv+0x284>
    80002e30:	000a0513          	mv	a0,s4
    80002e34:	00003097          	auipc	ra,0x3
    80002e38:	fec080e7          	jalr	-20(ra) # 80005e20 <_ZN6BufferD1Ev>
    80002e3c:	000a0513          	mv	a0,s4
    80002e40:	fffff097          	auipc	ra,0xfffff
    80002e44:	fe8080e7          	jalr	-24(ra) # 80001e28 <_ZdlPv>
    80002e48:	000b0113          	mv	sp,s6

}
    80002e4c:	f9040113          	addi	sp,s0,-112
    80002e50:	06813083          	ld	ra,104(sp)
    80002e54:	06013403          	ld	s0,96(sp)
    80002e58:	05813483          	ld	s1,88(sp)
    80002e5c:	05013903          	ld	s2,80(sp)
    80002e60:	04813983          	ld	s3,72(sp)
    80002e64:	04013a03          	ld	s4,64(sp)
    80002e68:	03813a83          	ld	s5,56(sp)
    80002e6c:	03013b03          	ld	s6,48(sp)
    80002e70:	07010113          	addi	sp,sp,112
    80002e74:	00008067          	ret
    80002e78:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002e7c:	000a0513          	mv	a0,s4
    80002e80:	fffff097          	auipc	ra,0xfffff
    80002e84:	fa8080e7          	jalr	-88(ra) # 80001e28 <_ZdlPv>
    80002e88:	00048513          	mv	a0,s1
    80002e8c:	00009097          	auipc	ra,0x9
    80002e90:	73c080e7          	jalr	1852(ra) # 8000c5c8 <_Unwind_Resume>

0000000080002e94 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002e94:	fe010113          	addi	sp,sp,-32
    80002e98:	00113c23          	sd	ra,24(sp)
    80002e9c:	00813823          	sd	s0,16(sp)
    80002ea0:	00913423          	sd	s1,8(sp)
    80002ea4:	01213023          	sd	s2,0(sp)
    80002ea8:	02010413          	addi	s0,sp,32
    80002eac:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002eb0:	00100793          	li	a5,1
    80002eb4:	02a7f863          	bgeu	a5,a0,80002ee4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002eb8:	00a00793          	li	a5,10
    80002ebc:	02f577b3          	remu	a5,a0,a5
    80002ec0:	02078e63          	beqz	a5,80002efc <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002ec4:	fff48513          	addi	a0,s1,-1
    80002ec8:	00000097          	auipc	ra,0x0
    80002ecc:	fcc080e7          	jalr	-52(ra) # 80002e94 <_ZL9fibonaccim>
    80002ed0:	00050913          	mv	s2,a0
    80002ed4:	ffe48513          	addi	a0,s1,-2
    80002ed8:	00000097          	auipc	ra,0x0
    80002edc:	fbc080e7          	jalr	-68(ra) # 80002e94 <_ZL9fibonaccim>
    80002ee0:	00a90533          	add	a0,s2,a0
}
    80002ee4:	01813083          	ld	ra,24(sp)
    80002ee8:	01013403          	ld	s0,16(sp)
    80002eec:	00813483          	ld	s1,8(sp)
    80002ef0:	00013903          	ld	s2,0(sp)
    80002ef4:	02010113          	addi	sp,sp,32
    80002ef8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002efc:	fffff097          	auipc	ra,0xfffff
    80002f00:	810080e7          	jalr	-2032(ra) # 8000170c <_Z15thread_dispatchv>
    80002f04:	fc1ff06f          	j	80002ec4 <_ZL9fibonaccim+0x30>

0000000080002f08 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002f08:	fe010113          	addi	sp,sp,-32
    80002f0c:	00113c23          	sd	ra,24(sp)
    80002f10:	00813823          	sd	s0,16(sp)
    80002f14:	00913423          	sd	s1,8(sp)
    80002f18:	01213023          	sd	s2,0(sp)
    80002f1c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002f20:	00000913          	li	s2,0
    80002f24:	0380006f          	j	80002f5c <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002f28:	ffffe097          	auipc	ra,0xffffe
    80002f2c:	7e4080e7          	jalr	2020(ra) # 8000170c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002f30:	00148493          	addi	s1,s1,1
    80002f34:	000027b7          	lui	a5,0x2
    80002f38:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002f3c:	0097ee63          	bltu	a5,s1,80002f58 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002f40:	00000713          	li	a4,0
    80002f44:	000077b7          	lui	a5,0x7
    80002f48:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002f4c:	fce7eee3          	bltu	a5,a4,80002f28 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002f50:	00170713          	addi	a4,a4,1
    80002f54:	ff1ff06f          	j	80002f44 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002f58:	00190913          	addi	s2,s2,1
    80002f5c:	00900793          	li	a5,9
    80002f60:	0527e063          	bltu	a5,s2,80002fa0 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002f64:	00006517          	auipc	a0,0x6
    80002f68:	1ac50513          	addi	a0,a0,428 # 80009110 <CONSOLE_STATUS+0x100>
    80002f6c:	00002097          	auipc	ra,0x2
    80002f70:	e7c080e7          	jalr	-388(ra) # 80004de8 <_Z11printStringPKc>
    80002f74:	00000613          	li	a2,0
    80002f78:	00a00593          	li	a1,10
    80002f7c:	0009051b          	sext.w	a0,s2
    80002f80:	00002097          	auipc	ra,0x2
    80002f84:	018080e7          	jalr	24(ra) # 80004f98 <_Z8printIntiii>
    80002f88:	00006517          	auipc	a0,0x6
    80002f8c:	40850513          	addi	a0,a0,1032 # 80009390 <CONSOLE_STATUS+0x380>
    80002f90:	00002097          	auipc	ra,0x2
    80002f94:	e58080e7          	jalr	-424(ra) # 80004de8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002f98:	00000493          	li	s1,0
    80002f9c:	f99ff06f          	j	80002f34 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002fa0:	00006517          	auipc	a0,0x6
    80002fa4:	17850513          	addi	a0,a0,376 # 80009118 <CONSOLE_STATUS+0x108>
    80002fa8:	00002097          	auipc	ra,0x2
    80002fac:	e40080e7          	jalr	-448(ra) # 80004de8 <_Z11printStringPKc>
    finishedA = true;
    80002fb0:	00100793          	li	a5,1
    80002fb4:	00008717          	auipc	a4,0x8
    80002fb8:	50f70223          	sb	a5,1284(a4) # 8000b4b8 <_ZL9finishedA>
}
    80002fbc:	01813083          	ld	ra,24(sp)
    80002fc0:	01013403          	ld	s0,16(sp)
    80002fc4:	00813483          	ld	s1,8(sp)
    80002fc8:	00013903          	ld	s2,0(sp)
    80002fcc:	02010113          	addi	sp,sp,32
    80002fd0:	00008067          	ret

0000000080002fd4 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002fd4:	fe010113          	addi	sp,sp,-32
    80002fd8:	00113c23          	sd	ra,24(sp)
    80002fdc:	00813823          	sd	s0,16(sp)
    80002fe0:	00913423          	sd	s1,8(sp)
    80002fe4:	01213023          	sd	s2,0(sp)
    80002fe8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002fec:	00000913          	li	s2,0
    80002ff0:	0380006f          	j	80003028 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002ff4:	ffffe097          	auipc	ra,0xffffe
    80002ff8:	718080e7          	jalr	1816(ra) # 8000170c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002ffc:	00148493          	addi	s1,s1,1
    80003000:	000027b7          	lui	a5,0x2
    80003004:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003008:	0097ee63          	bltu	a5,s1,80003024 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000300c:	00000713          	li	a4,0
    80003010:	000077b7          	lui	a5,0x7
    80003014:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003018:	fce7eee3          	bltu	a5,a4,80002ff4 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000301c:	00170713          	addi	a4,a4,1
    80003020:	ff1ff06f          	j	80003010 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003024:	00190913          	addi	s2,s2,1
    80003028:	00f00793          	li	a5,15
    8000302c:	0527e063          	bltu	a5,s2,8000306c <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003030:	00006517          	auipc	a0,0x6
    80003034:	0f850513          	addi	a0,a0,248 # 80009128 <CONSOLE_STATUS+0x118>
    80003038:	00002097          	auipc	ra,0x2
    8000303c:	db0080e7          	jalr	-592(ra) # 80004de8 <_Z11printStringPKc>
    80003040:	00000613          	li	a2,0
    80003044:	00a00593          	li	a1,10
    80003048:	0009051b          	sext.w	a0,s2
    8000304c:	00002097          	auipc	ra,0x2
    80003050:	f4c080e7          	jalr	-180(ra) # 80004f98 <_Z8printIntiii>
    80003054:	00006517          	auipc	a0,0x6
    80003058:	33c50513          	addi	a0,a0,828 # 80009390 <CONSOLE_STATUS+0x380>
    8000305c:	00002097          	auipc	ra,0x2
    80003060:	d8c080e7          	jalr	-628(ra) # 80004de8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003064:	00000493          	li	s1,0
    80003068:	f99ff06f          	j	80003000 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    8000306c:	00006517          	auipc	a0,0x6
    80003070:	0c450513          	addi	a0,a0,196 # 80009130 <CONSOLE_STATUS+0x120>
    80003074:	00002097          	auipc	ra,0x2
    80003078:	d74080e7          	jalr	-652(ra) # 80004de8 <_Z11printStringPKc>
    finishedB = true;
    8000307c:	00100793          	li	a5,1
    80003080:	00008717          	auipc	a4,0x8
    80003084:	42f70ca3          	sb	a5,1081(a4) # 8000b4b9 <_ZL9finishedB>
    thread_dispatch();
    80003088:	ffffe097          	auipc	ra,0xffffe
    8000308c:	684080e7          	jalr	1668(ra) # 8000170c <_Z15thread_dispatchv>
}
    80003090:	01813083          	ld	ra,24(sp)
    80003094:	01013403          	ld	s0,16(sp)
    80003098:	00813483          	ld	s1,8(sp)
    8000309c:	00013903          	ld	s2,0(sp)
    800030a0:	02010113          	addi	sp,sp,32
    800030a4:	00008067          	ret

00000000800030a8 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800030a8:	fe010113          	addi	sp,sp,-32
    800030ac:	00113c23          	sd	ra,24(sp)
    800030b0:	00813823          	sd	s0,16(sp)
    800030b4:	00913423          	sd	s1,8(sp)
    800030b8:	01213023          	sd	s2,0(sp)
    800030bc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800030c0:	00000493          	li	s1,0
    800030c4:	0400006f          	j	80003104 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800030c8:	00006517          	auipc	a0,0x6
    800030cc:	07850513          	addi	a0,a0,120 # 80009140 <CONSOLE_STATUS+0x130>
    800030d0:	00002097          	auipc	ra,0x2
    800030d4:	d18080e7          	jalr	-744(ra) # 80004de8 <_Z11printStringPKc>
    800030d8:	00000613          	li	a2,0
    800030dc:	00a00593          	li	a1,10
    800030e0:	00048513          	mv	a0,s1
    800030e4:	00002097          	auipc	ra,0x2
    800030e8:	eb4080e7          	jalr	-332(ra) # 80004f98 <_Z8printIntiii>
    800030ec:	00006517          	auipc	a0,0x6
    800030f0:	2a450513          	addi	a0,a0,676 # 80009390 <CONSOLE_STATUS+0x380>
    800030f4:	00002097          	auipc	ra,0x2
    800030f8:	cf4080e7          	jalr	-780(ra) # 80004de8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800030fc:	0014849b          	addiw	s1,s1,1
    80003100:	0ff4f493          	andi	s1,s1,255
    80003104:	00200793          	li	a5,2
    80003108:	fc97f0e3          	bgeu	a5,s1,800030c8 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    8000310c:	00006517          	auipc	a0,0x6
    80003110:	03c50513          	addi	a0,a0,60 # 80009148 <CONSOLE_STATUS+0x138>
    80003114:	00002097          	auipc	ra,0x2
    80003118:	cd4080e7          	jalr	-812(ra) # 80004de8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000311c:	00700313          	li	t1,7
    thread_dispatch();
    80003120:	ffffe097          	auipc	ra,0xffffe
    80003124:	5ec080e7          	jalr	1516(ra) # 8000170c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003128:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000312c:	00006517          	auipc	a0,0x6
    80003130:	02c50513          	addi	a0,a0,44 # 80009158 <CONSOLE_STATUS+0x148>
    80003134:	00002097          	auipc	ra,0x2
    80003138:	cb4080e7          	jalr	-844(ra) # 80004de8 <_Z11printStringPKc>
    8000313c:	00000613          	li	a2,0
    80003140:	00a00593          	li	a1,10
    80003144:	0009051b          	sext.w	a0,s2
    80003148:	00002097          	auipc	ra,0x2
    8000314c:	e50080e7          	jalr	-432(ra) # 80004f98 <_Z8printIntiii>
    80003150:	00006517          	auipc	a0,0x6
    80003154:	24050513          	addi	a0,a0,576 # 80009390 <CONSOLE_STATUS+0x380>
    80003158:	00002097          	auipc	ra,0x2
    8000315c:	c90080e7          	jalr	-880(ra) # 80004de8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003160:	00c00513          	li	a0,12
    80003164:	00000097          	auipc	ra,0x0
    80003168:	d30080e7          	jalr	-720(ra) # 80002e94 <_ZL9fibonaccim>
    8000316c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003170:	00006517          	auipc	a0,0x6
    80003174:	ff050513          	addi	a0,a0,-16 # 80009160 <CONSOLE_STATUS+0x150>
    80003178:	00002097          	auipc	ra,0x2
    8000317c:	c70080e7          	jalr	-912(ra) # 80004de8 <_Z11printStringPKc>
    80003180:	00000613          	li	a2,0
    80003184:	00a00593          	li	a1,10
    80003188:	0009051b          	sext.w	a0,s2
    8000318c:	00002097          	auipc	ra,0x2
    80003190:	e0c080e7          	jalr	-500(ra) # 80004f98 <_Z8printIntiii>
    80003194:	00006517          	auipc	a0,0x6
    80003198:	1fc50513          	addi	a0,a0,508 # 80009390 <CONSOLE_STATUS+0x380>
    8000319c:	00002097          	auipc	ra,0x2
    800031a0:	c4c080e7          	jalr	-948(ra) # 80004de8 <_Z11printStringPKc>
    800031a4:	0400006f          	j	800031e4 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800031a8:	00006517          	auipc	a0,0x6
    800031ac:	f9850513          	addi	a0,a0,-104 # 80009140 <CONSOLE_STATUS+0x130>
    800031b0:	00002097          	auipc	ra,0x2
    800031b4:	c38080e7          	jalr	-968(ra) # 80004de8 <_Z11printStringPKc>
    800031b8:	00000613          	li	a2,0
    800031bc:	00a00593          	li	a1,10
    800031c0:	00048513          	mv	a0,s1
    800031c4:	00002097          	auipc	ra,0x2
    800031c8:	dd4080e7          	jalr	-556(ra) # 80004f98 <_Z8printIntiii>
    800031cc:	00006517          	auipc	a0,0x6
    800031d0:	1c450513          	addi	a0,a0,452 # 80009390 <CONSOLE_STATUS+0x380>
    800031d4:	00002097          	auipc	ra,0x2
    800031d8:	c14080e7          	jalr	-1004(ra) # 80004de8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800031dc:	0014849b          	addiw	s1,s1,1
    800031e0:	0ff4f493          	andi	s1,s1,255
    800031e4:	00500793          	li	a5,5
    800031e8:	fc97f0e3          	bgeu	a5,s1,800031a8 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    800031ec:	00006517          	auipc	a0,0x6
    800031f0:	f2c50513          	addi	a0,a0,-212 # 80009118 <CONSOLE_STATUS+0x108>
    800031f4:	00002097          	auipc	ra,0x2
    800031f8:	bf4080e7          	jalr	-1036(ra) # 80004de8 <_Z11printStringPKc>
    finishedC = true;
    800031fc:	00100793          	li	a5,1
    80003200:	00008717          	auipc	a4,0x8
    80003204:	2af70d23          	sb	a5,698(a4) # 8000b4ba <_ZL9finishedC>
    thread_dispatch();
    80003208:	ffffe097          	auipc	ra,0xffffe
    8000320c:	504080e7          	jalr	1284(ra) # 8000170c <_Z15thread_dispatchv>
}
    80003210:	01813083          	ld	ra,24(sp)
    80003214:	01013403          	ld	s0,16(sp)
    80003218:	00813483          	ld	s1,8(sp)
    8000321c:	00013903          	ld	s2,0(sp)
    80003220:	02010113          	addi	sp,sp,32
    80003224:	00008067          	ret

0000000080003228 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003228:	fe010113          	addi	sp,sp,-32
    8000322c:	00113c23          	sd	ra,24(sp)
    80003230:	00813823          	sd	s0,16(sp)
    80003234:	00913423          	sd	s1,8(sp)
    80003238:	01213023          	sd	s2,0(sp)
    8000323c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003240:	00a00493          	li	s1,10
    80003244:	0400006f          	j	80003284 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003248:	00006517          	auipc	a0,0x6
    8000324c:	f2850513          	addi	a0,a0,-216 # 80009170 <CONSOLE_STATUS+0x160>
    80003250:	00002097          	auipc	ra,0x2
    80003254:	b98080e7          	jalr	-1128(ra) # 80004de8 <_Z11printStringPKc>
    80003258:	00000613          	li	a2,0
    8000325c:	00a00593          	li	a1,10
    80003260:	00048513          	mv	a0,s1
    80003264:	00002097          	auipc	ra,0x2
    80003268:	d34080e7          	jalr	-716(ra) # 80004f98 <_Z8printIntiii>
    8000326c:	00006517          	auipc	a0,0x6
    80003270:	12450513          	addi	a0,a0,292 # 80009390 <CONSOLE_STATUS+0x380>
    80003274:	00002097          	auipc	ra,0x2
    80003278:	b74080e7          	jalr	-1164(ra) # 80004de8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000327c:	0014849b          	addiw	s1,s1,1
    80003280:	0ff4f493          	andi	s1,s1,255
    80003284:	00c00793          	li	a5,12
    80003288:	fc97f0e3          	bgeu	a5,s1,80003248 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    8000328c:	00006517          	auipc	a0,0x6
    80003290:	eec50513          	addi	a0,a0,-276 # 80009178 <CONSOLE_STATUS+0x168>
    80003294:	00002097          	auipc	ra,0x2
    80003298:	b54080e7          	jalr	-1196(ra) # 80004de8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000329c:	00500313          	li	t1,5
    thread_dispatch();
    800032a0:	ffffe097          	auipc	ra,0xffffe
    800032a4:	46c080e7          	jalr	1132(ra) # 8000170c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800032a8:	01000513          	li	a0,16
    800032ac:	00000097          	auipc	ra,0x0
    800032b0:	be8080e7          	jalr	-1048(ra) # 80002e94 <_ZL9fibonaccim>
    800032b4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800032b8:	00006517          	auipc	a0,0x6
    800032bc:	ed050513          	addi	a0,a0,-304 # 80009188 <CONSOLE_STATUS+0x178>
    800032c0:	00002097          	auipc	ra,0x2
    800032c4:	b28080e7          	jalr	-1240(ra) # 80004de8 <_Z11printStringPKc>
    800032c8:	00000613          	li	a2,0
    800032cc:	00a00593          	li	a1,10
    800032d0:	0009051b          	sext.w	a0,s2
    800032d4:	00002097          	auipc	ra,0x2
    800032d8:	cc4080e7          	jalr	-828(ra) # 80004f98 <_Z8printIntiii>
    800032dc:	00006517          	auipc	a0,0x6
    800032e0:	0b450513          	addi	a0,a0,180 # 80009390 <CONSOLE_STATUS+0x380>
    800032e4:	00002097          	auipc	ra,0x2
    800032e8:	b04080e7          	jalr	-1276(ra) # 80004de8 <_Z11printStringPKc>
    800032ec:	0400006f          	j	8000332c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800032f0:	00006517          	auipc	a0,0x6
    800032f4:	e8050513          	addi	a0,a0,-384 # 80009170 <CONSOLE_STATUS+0x160>
    800032f8:	00002097          	auipc	ra,0x2
    800032fc:	af0080e7          	jalr	-1296(ra) # 80004de8 <_Z11printStringPKc>
    80003300:	00000613          	li	a2,0
    80003304:	00a00593          	li	a1,10
    80003308:	00048513          	mv	a0,s1
    8000330c:	00002097          	auipc	ra,0x2
    80003310:	c8c080e7          	jalr	-884(ra) # 80004f98 <_Z8printIntiii>
    80003314:	00006517          	auipc	a0,0x6
    80003318:	07c50513          	addi	a0,a0,124 # 80009390 <CONSOLE_STATUS+0x380>
    8000331c:	00002097          	auipc	ra,0x2
    80003320:	acc080e7          	jalr	-1332(ra) # 80004de8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003324:	0014849b          	addiw	s1,s1,1
    80003328:	0ff4f493          	andi	s1,s1,255
    8000332c:	00f00793          	li	a5,15
    80003330:	fc97f0e3          	bgeu	a5,s1,800032f0 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003334:	00006517          	auipc	a0,0x6
    80003338:	e6450513          	addi	a0,a0,-412 # 80009198 <CONSOLE_STATUS+0x188>
    8000333c:	00002097          	auipc	ra,0x2
    80003340:	aac080e7          	jalr	-1364(ra) # 80004de8 <_Z11printStringPKc>
    finishedD = true;
    80003344:	00100793          	li	a5,1
    80003348:	00008717          	auipc	a4,0x8
    8000334c:	16f709a3          	sb	a5,371(a4) # 8000b4bb <_ZL9finishedD>
    thread_dispatch();
    80003350:	ffffe097          	auipc	ra,0xffffe
    80003354:	3bc080e7          	jalr	956(ra) # 8000170c <_Z15thread_dispatchv>
}
    80003358:	01813083          	ld	ra,24(sp)
    8000335c:	01013403          	ld	s0,16(sp)
    80003360:	00813483          	ld	s1,8(sp)
    80003364:	00013903          	ld	s2,0(sp)
    80003368:	02010113          	addi	sp,sp,32
    8000336c:	00008067          	ret

0000000080003370 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003370:	fc010113          	addi	sp,sp,-64
    80003374:	02113c23          	sd	ra,56(sp)
    80003378:	02813823          	sd	s0,48(sp)
    8000337c:	02913423          	sd	s1,40(sp)
    80003380:	03213023          	sd	s2,32(sp)
    80003384:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003388:	02000513          	li	a0,32
    8000338c:	fffff097          	auipc	ra,0xfffff
    80003390:	a4c080e7          	jalr	-1460(ra) # 80001dd8 <_Znwm>
    80003394:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003398:	ffffe097          	auipc	ra,0xffffe
    8000339c:	00c080e7          	jalr	12(ra) # 800013a4 <_ZN6ThreadC1Ev>
    800033a0:	00008797          	auipc	a5,0x8
    800033a4:	eb078793          	addi	a5,a5,-336 # 8000b250 <_ZTV7WorkerA+0x10>
    800033a8:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800033ac:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800033b0:	00006517          	auipc	a0,0x6
    800033b4:	df850513          	addi	a0,a0,-520 # 800091a8 <CONSOLE_STATUS+0x198>
    800033b8:	00002097          	auipc	ra,0x2
    800033bc:	a30080e7          	jalr	-1488(ra) # 80004de8 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800033c0:	02000513          	li	a0,32
    800033c4:	fffff097          	auipc	ra,0xfffff
    800033c8:	a14080e7          	jalr	-1516(ra) # 80001dd8 <_Znwm>
    800033cc:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800033d0:	ffffe097          	auipc	ra,0xffffe
    800033d4:	fd4080e7          	jalr	-44(ra) # 800013a4 <_ZN6ThreadC1Ev>
    800033d8:	00008797          	auipc	a5,0x8
    800033dc:	ea078793          	addi	a5,a5,-352 # 8000b278 <_ZTV7WorkerB+0x10>
    800033e0:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800033e4:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800033e8:	00006517          	auipc	a0,0x6
    800033ec:	dd850513          	addi	a0,a0,-552 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800033f0:	00002097          	auipc	ra,0x2
    800033f4:	9f8080e7          	jalr	-1544(ra) # 80004de8 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800033f8:	02000513          	li	a0,32
    800033fc:	fffff097          	auipc	ra,0xfffff
    80003400:	9dc080e7          	jalr	-1572(ra) # 80001dd8 <_Znwm>
    80003404:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003408:	ffffe097          	auipc	ra,0xffffe
    8000340c:	f9c080e7          	jalr	-100(ra) # 800013a4 <_ZN6ThreadC1Ev>
    80003410:	00008797          	auipc	a5,0x8
    80003414:	e9078793          	addi	a5,a5,-368 # 8000b2a0 <_ZTV7WorkerC+0x10>
    80003418:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    8000341c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003420:	00006517          	auipc	a0,0x6
    80003424:	db850513          	addi	a0,a0,-584 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80003428:	00002097          	auipc	ra,0x2
    8000342c:	9c0080e7          	jalr	-1600(ra) # 80004de8 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003430:	02000513          	li	a0,32
    80003434:	fffff097          	auipc	ra,0xfffff
    80003438:	9a4080e7          	jalr	-1628(ra) # 80001dd8 <_Znwm>
    8000343c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003440:	ffffe097          	auipc	ra,0xffffe
    80003444:	f64080e7          	jalr	-156(ra) # 800013a4 <_ZN6ThreadC1Ev>
    80003448:	00008797          	auipc	a5,0x8
    8000344c:	e8078793          	addi	a5,a5,-384 # 8000b2c8 <_ZTV7WorkerD+0x10>
    80003450:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003454:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003458:	00006517          	auipc	a0,0x6
    8000345c:	d9850513          	addi	a0,a0,-616 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80003460:	00002097          	auipc	ra,0x2
    80003464:	988080e7          	jalr	-1656(ra) # 80004de8 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003468:	00000493          	li	s1,0
    8000346c:	00300793          	li	a5,3
    80003470:	0297c663          	blt	a5,s1,8000349c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003474:	00349793          	slli	a5,s1,0x3
    80003478:	fe040713          	addi	a4,s0,-32
    8000347c:	00f707b3          	add	a5,a4,a5
    80003480:	fe07b503          	ld	a0,-32(a5)
    80003484:	ffffe097          	auipc	ra,0xffffe
    80003488:	f58080e7          	jalr	-168(ra) # 800013dc <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    8000348c:	0014849b          	addiw	s1,s1,1
    80003490:	fddff06f          	j	8000346c <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003494:	ffffe097          	auipc	ra,0xffffe
    80003498:	f7c080e7          	jalr	-132(ra) # 80001410 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000349c:	00008797          	auipc	a5,0x8
    800034a0:	01c7c783          	lbu	a5,28(a5) # 8000b4b8 <_ZL9finishedA>
    800034a4:	fe0788e3          	beqz	a5,80003494 <_Z20Threads_CPP_API_testv+0x124>
    800034a8:	00008797          	auipc	a5,0x8
    800034ac:	0117c783          	lbu	a5,17(a5) # 8000b4b9 <_ZL9finishedB>
    800034b0:	fe0782e3          	beqz	a5,80003494 <_Z20Threads_CPP_API_testv+0x124>
    800034b4:	00008797          	auipc	a5,0x8
    800034b8:	0067c783          	lbu	a5,6(a5) # 8000b4ba <_ZL9finishedC>
    800034bc:	fc078ce3          	beqz	a5,80003494 <_Z20Threads_CPP_API_testv+0x124>
    800034c0:	00008797          	auipc	a5,0x8
    800034c4:	ffb7c783          	lbu	a5,-5(a5) # 8000b4bb <_ZL9finishedD>
    800034c8:	fc0786e3          	beqz	a5,80003494 <_Z20Threads_CPP_API_testv+0x124>
    800034cc:	fc040493          	addi	s1,s0,-64
    800034d0:	0080006f          	j	800034d8 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    800034d4:	00848493          	addi	s1,s1,8
    800034d8:	fe040793          	addi	a5,s0,-32
    800034dc:	08f48663          	beq	s1,a5,80003568 <_Z20Threads_CPP_API_testv+0x1f8>
    800034e0:	0004b503          	ld	a0,0(s1)
    800034e4:	fe0508e3          	beqz	a0,800034d4 <_Z20Threads_CPP_API_testv+0x164>
    800034e8:	00053783          	ld	a5,0(a0)
    800034ec:	0087b783          	ld	a5,8(a5)
    800034f0:	000780e7          	jalr	a5
    800034f4:	fe1ff06f          	j	800034d4 <_Z20Threads_CPP_API_testv+0x164>
    800034f8:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800034fc:	00048513          	mv	a0,s1
    80003500:	fffff097          	auipc	ra,0xfffff
    80003504:	928080e7          	jalr	-1752(ra) # 80001e28 <_ZdlPv>
    80003508:	00090513          	mv	a0,s2
    8000350c:	00009097          	auipc	ra,0x9
    80003510:	0bc080e7          	jalr	188(ra) # 8000c5c8 <_Unwind_Resume>
    80003514:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003518:	00048513          	mv	a0,s1
    8000351c:	fffff097          	auipc	ra,0xfffff
    80003520:	90c080e7          	jalr	-1780(ra) # 80001e28 <_ZdlPv>
    80003524:	00090513          	mv	a0,s2
    80003528:	00009097          	auipc	ra,0x9
    8000352c:	0a0080e7          	jalr	160(ra) # 8000c5c8 <_Unwind_Resume>
    80003530:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003534:	00048513          	mv	a0,s1
    80003538:	fffff097          	auipc	ra,0xfffff
    8000353c:	8f0080e7          	jalr	-1808(ra) # 80001e28 <_ZdlPv>
    80003540:	00090513          	mv	a0,s2
    80003544:	00009097          	auipc	ra,0x9
    80003548:	084080e7          	jalr	132(ra) # 8000c5c8 <_Unwind_Resume>
    8000354c:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003550:	00048513          	mv	a0,s1
    80003554:	fffff097          	auipc	ra,0xfffff
    80003558:	8d4080e7          	jalr	-1836(ra) # 80001e28 <_ZdlPv>
    8000355c:	00090513          	mv	a0,s2
    80003560:	00009097          	auipc	ra,0x9
    80003564:	068080e7          	jalr	104(ra) # 8000c5c8 <_Unwind_Resume>
}
    80003568:	03813083          	ld	ra,56(sp)
    8000356c:	03013403          	ld	s0,48(sp)
    80003570:	02813483          	ld	s1,40(sp)
    80003574:	02013903          	ld	s2,32(sp)
    80003578:	04010113          	addi	sp,sp,64
    8000357c:	00008067          	ret

0000000080003580 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003580:	ff010113          	addi	sp,sp,-16
    80003584:	00113423          	sd	ra,8(sp)
    80003588:	00813023          	sd	s0,0(sp)
    8000358c:	01010413          	addi	s0,sp,16
    80003590:	00008797          	auipc	a5,0x8
    80003594:	cc078793          	addi	a5,a5,-832 # 8000b250 <_ZTV7WorkerA+0x10>
    80003598:	00f53023          	sd	a5,0(a0)
    8000359c:	ffffe097          	auipc	ra,0xffffe
    800035a0:	cc4080e7          	jalr	-828(ra) # 80001260 <_ZN6ThreadD1Ev>
    800035a4:	00813083          	ld	ra,8(sp)
    800035a8:	00013403          	ld	s0,0(sp)
    800035ac:	01010113          	addi	sp,sp,16
    800035b0:	00008067          	ret

00000000800035b4 <_ZN7WorkerAD0Ev>:
    800035b4:	fe010113          	addi	sp,sp,-32
    800035b8:	00113c23          	sd	ra,24(sp)
    800035bc:	00813823          	sd	s0,16(sp)
    800035c0:	00913423          	sd	s1,8(sp)
    800035c4:	02010413          	addi	s0,sp,32
    800035c8:	00050493          	mv	s1,a0
    800035cc:	00008797          	auipc	a5,0x8
    800035d0:	c8478793          	addi	a5,a5,-892 # 8000b250 <_ZTV7WorkerA+0x10>
    800035d4:	00f53023          	sd	a5,0(a0)
    800035d8:	ffffe097          	auipc	ra,0xffffe
    800035dc:	c88080e7          	jalr	-888(ra) # 80001260 <_ZN6ThreadD1Ev>
    800035e0:	00048513          	mv	a0,s1
    800035e4:	fffff097          	auipc	ra,0xfffff
    800035e8:	844080e7          	jalr	-1980(ra) # 80001e28 <_ZdlPv>
    800035ec:	01813083          	ld	ra,24(sp)
    800035f0:	01013403          	ld	s0,16(sp)
    800035f4:	00813483          	ld	s1,8(sp)
    800035f8:	02010113          	addi	sp,sp,32
    800035fc:	00008067          	ret

0000000080003600 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003600:	ff010113          	addi	sp,sp,-16
    80003604:	00113423          	sd	ra,8(sp)
    80003608:	00813023          	sd	s0,0(sp)
    8000360c:	01010413          	addi	s0,sp,16
    80003610:	00008797          	auipc	a5,0x8
    80003614:	c6878793          	addi	a5,a5,-920 # 8000b278 <_ZTV7WorkerB+0x10>
    80003618:	00f53023          	sd	a5,0(a0)
    8000361c:	ffffe097          	auipc	ra,0xffffe
    80003620:	c44080e7          	jalr	-956(ra) # 80001260 <_ZN6ThreadD1Ev>
    80003624:	00813083          	ld	ra,8(sp)
    80003628:	00013403          	ld	s0,0(sp)
    8000362c:	01010113          	addi	sp,sp,16
    80003630:	00008067          	ret

0000000080003634 <_ZN7WorkerBD0Ev>:
    80003634:	fe010113          	addi	sp,sp,-32
    80003638:	00113c23          	sd	ra,24(sp)
    8000363c:	00813823          	sd	s0,16(sp)
    80003640:	00913423          	sd	s1,8(sp)
    80003644:	02010413          	addi	s0,sp,32
    80003648:	00050493          	mv	s1,a0
    8000364c:	00008797          	auipc	a5,0x8
    80003650:	c2c78793          	addi	a5,a5,-980 # 8000b278 <_ZTV7WorkerB+0x10>
    80003654:	00f53023          	sd	a5,0(a0)
    80003658:	ffffe097          	auipc	ra,0xffffe
    8000365c:	c08080e7          	jalr	-1016(ra) # 80001260 <_ZN6ThreadD1Ev>
    80003660:	00048513          	mv	a0,s1
    80003664:	ffffe097          	auipc	ra,0xffffe
    80003668:	7c4080e7          	jalr	1988(ra) # 80001e28 <_ZdlPv>
    8000366c:	01813083          	ld	ra,24(sp)
    80003670:	01013403          	ld	s0,16(sp)
    80003674:	00813483          	ld	s1,8(sp)
    80003678:	02010113          	addi	sp,sp,32
    8000367c:	00008067          	ret

0000000080003680 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003680:	ff010113          	addi	sp,sp,-16
    80003684:	00113423          	sd	ra,8(sp)
    80003688:	00813023          	sd	s0,0(sp)
    8000368c:	01010413          	addi	s0,sp,16
    80003690:	00008797          	auipc	a5,0x8
    80003694:	c1078793          	addi	a5,a5,-1008 # 8000b2a0 <_ZTV7WorkerC+0x10>
    80003698:	00f53023          	sd	a5,0(a0)
    8000369c:	ffffe097          	auipc	ra,0xffffe
    800036a0:	bc4080e7          	jalr	-1084(ra) # 80001260 <_ZN6ThreadD1Ev>
    800036a4:	00813083          	ld	ra,8(sp)
    800036a8:	00013403          	ld	s0,0(sp)
    800036ac:	01010113          	addi	sp,sp,16
    800036b0:	00008067          	ret

00000000800036b4 <_ZN7WorkerCD0Ev>:
    800036b4:	fe010113          	addi	sp,sp,-32
    800036b8:	00113c23          	sd	ra,24(sp)
    800036bc:	00813823          	sd	s0,16(sp)
    800036c0:	00913423          	sd	s1,8(sp)
    800036c4:	02010413          	addi	s0,sp,32
    800036c8:	00050493          	mv	s1,a0
    800036cc:	00008797          	auipc	a5,0x8
    800036d0:	bd478793          	addi	a5,a5,-1068 # 8000b2a0 <_ZTV7WorkerC+0x10>
    800036d4:	00f53023          	sd	a5,0(a0)
    800036d8:	ffffe097          	auipc	ra,0xffffe
    800036dc:	b88080e7          	jalr	-1144(ra) # 80001260 <_ZN6ThreadD1Ev>
    800036e0:	00048513          	mv	a0,s1
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	744080e7          	jalr	1860(ra) # 80001e28 <_ZdlPv>
    800036ec:	01813083          	ld	ra,24(sp)
    800036f0:	01013403          	ld	s0,16(sp)
    800036f4:	00813483          	ld	s1,8(sp)
    800036f8:	02010113          	addi	sp,sp,32
    800036fc:	00008067          	ret

0000000080003700 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003700:	ff010113          	addi	sp,sp,-16
    80003704:	00113423          	sd	ra,8(sp)
    80003708:	00813023          	sd	s0,0(sp)
    8000370c:	01010413          	addi	s0,sp,16
    80003710:	00008797          	auipc	a5,0x8
    80003714:	bb878793          	addi	a5,a5,-1096 # 8000b2c8 <_ZTV7WorkerD+0x10>
    80003718:	00f53023          	sd	a5,0(a0)
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	b44080e7          	jalr	-1212(ra) # 80001260 <_ZN6ThreadD1Ev>
    80003724:	00813083          	ld	ra,8(sp)
    80003728:	00013403          	ld	s0,0(sp)
    8000372c:	01010113          	addi	sp,sp,16
    80003730:	00008067          	ret

0000000080003734 <_ZN7WorkerDD0Ev>:
    80003734:	fe010113          	addi	sp,sp,-32
    80003738:	00113c23          	sd	ra,24(sp)
    8000373c:	00813823          	sd	s0,16(sp)
    80003740:	00913423          	sd	s1,8(sp)
    80003744:	02010413          	addi	s0,sp,32
    80003748:	00050493          	mv	s1,a0
    8000374c:	00008797          	auipc	a5,0x8
    80003750:	b7c78793          	addi	a5,a5,-1156 # 8000b2c8 <_ZTV7WorkerD+0x10>
    80003754:	00f53023          	sd	a5,0(a0)
    80003758:	ffffe097          	auipc	ra,0xffffe
    8000375c:	b08080e7          	jalr	-1272(ra) # 80001260 <_ZN6ThreadD1Ev>
    80003760:	00048513          	mv	a0,s1
    80003764:	ffffe097          	auipc	ra,0xffffe
    80003768:	6c4080e7          	jalr	1732(ra) # 80001e28 <_ZdlPv>
    8000376c:	01813083          	ld	ra,24(sp)
    80003770:	01013403          	ld	s0,16(sp)
    80003774:	00813483          	ld	s1,8(sp)
    80003778:	02010113          	addi	sp,sp,32
    8000377c:	00008067          	ret

0000000080003780 <_ZN7WorkerA3runEv>:
    void run() override {
    80003780:	ff010113          	addi	sp,sp,-16
    80003784:	00113423          	sd	ra,8(sp)
    80003788:	00813023          	sd	s0,0(sp)
    8000378c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003790:	00000593          	li	a1,0
    80003794:	fffff097          	auipc	ra,0xfffff
    80003798:	774080e7          	jalr	1908(ra) # 80002f08 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000379c:	00813083          	ld	ra,8(sp)
    800037a0:	00013403          	ld	s0,0(sp)
    800037a4:	01010113          	addi	sp,sp,16
    800037a8:	00008067          	ret

00000000800037ac <_ZN7WorkerB3runEv>:
    void run() override {
    800037ac:	ff010113          	addi	sp,sp,-16
    800037b0:	00113423          	sd	ra,8(sp)
    800037b4:	00813023          	sd	s0,0(sp)
    800037b8:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800037bc:	00000593          	li	a1,0
    800037c0:	00000097          	auipc	ra,0x0
    800037c4:	814080e7          	jalr	-2028(ra) # 80002fd4 <_ZN7WorkerB11workerBodyBEPv>
    }
    800037c8:	00813083          	ld	ra,8(sp)
    800037cc:	00013403          	ld	s0,0(sp)
    800037d0:	01010113          	addi	sp,sp,16
    800037d4:	00008067          	ret

00000000800037d8 <_ZN7WorkerC3runEv>:
    void run() override {
    800037d8:	ff010113          	addi	sp,sp,-16
    800037dc:	00113423          	sd	ra,8(sp)
    800037e0:	00813023          	sd	s0,0(sp)
    800037e4:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800037e8:	00000593          	li	a1,0
    800037ec:	00000097          	auipc	ra,0x0
    800037f0:	8bc080e7          	jalr	-1860(ra) # 800030a8 <_ZN7WorkerC11workerBodyCEPv>
    }
    800037f4:	00813083          	ld	ra,8(sp)
    800037f8:	00013403          	ld	s0,0(sp)
    800037fc:	01010113          	addi	sp,sp,16
    80003800:	00008067          	ret

0000000080003804 <_ZN7WorkerD3runEv>:
    void run() override {
    80003804:	ff010113          	addi	sp,sp,-16
    80003808:	00113423          	sd	ra,8(sp)
    8000380c:	00813023          	sd	s0,0(sp)
    80003810:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003814:	00000593          	li	a1,0
    80003818:	00000097          	auipc	ra,0x0
    8000381c:	a10080e7          	jalr	-1520(ra) # 80003228 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003820:	00813083          	ld	ra,8(sp)
    80003824:	00013403          	ld	s0,0(sp)
    80003828:	01010113          	addi	sp,sp,16
    8000382c:	00008067          	ret

0000000080003830 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003830:	f8010113          	addi	sp,sp,-128
    80003834:	06113c23          	sd	ra,120(sp)
    80003838:	06813823          	sd	s0,112(sp)
    8000383c:	06913423          	sd	s1,104(sp)
    80003840:	07213023          	sd	s2,96(sp)
    80003844:	05313c23          	sd	s3,88(sp)
    80003848:	05413823          	sd	s4,80(sp)
    8000384c:	05513423          	sd	s5,72(sp)
    80003850:	05613023          	sd	s6,64(sp)
    80003854:	03713c23          	sd	s7,56(sp)
    80003858:	03813823          	sd	s8,48(sp)
    8000385c:	03913423          	sd	s9,40(sp)
    80003860:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003864:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003868:	00005517          	auipc	a0,0x5
    8000386c:	7c050513          	addi	a0,a0,1984 # 80009028 <CONSOLE_STATUS+0x18>
    80003870:	00001097          	auipc	ra,0x1
    80003874:	578080e7          	jalr	1400(ra) # 80004de8 <_Z11printStringPKc>
    getString(input, 30);
    80003878:	01e00593          	li	a1,30
    8000387c:	f8040493          	addi	s1,s0,-128
    80003880:	00048513          	mv	a0,s1
    80003884:	00001097          	auipc	ra,0x1
    80003888:	5ec080e7          	jalr	1516(ra) # 80004e70 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000388c:	00048513          	mv	a0,s1
    80003890:	00001097          	auipc	ra,0x1
    80003894:	6b8080e7          	jalr	1720(ra) # 80004f48 <_Z11stringToIntPKc>
    80003898:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    8000389c:	00005517          	auipc	a0,0x5
    800038a0:	7ac50513          	addi	a0,a0,1964 # 80009048 <CONSOLE_STATUS+0x38>
    800038a4:	00001097          	auipc	ra,0x1
    800038a8:	544080e7          	jalr	1348(ra) # 80004de8 <_Z11printStringPKc>
    getString(input, 30);
    800038ac:	01e00593          	li	a1,30
    800038b0:	00048513          	mv	a0,s1
    800038b4:	00001097          	auipc	ra,0x1
    800038b8:	5bc080e7          	jalr	1468(ra) # 80004e70 <_Z9getStringPci>
    n = stringToInt(input);
    800038bc:	00048513          	mv	a0,s1
    800038c0:	00001097          	auipc	ra,0x1
    800038c4:	688080e7          	jalr	1672(ra) # 80004f48 <_Z11stringToIntPKc>
    800038c8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800038cc:	00005517          	auipc	a0,0x5
    800038d0:	79c50513          	addi	a0,a0,1948 # 80009068 <CONSOLE_STATUS+0x58>
    800038d4:	00001097          	auipc	ra,0x1
    800038d8:	514080e7          	jalr	1300(ra) # 80004de8 <_Z11printStringPKc>
    printInt(threadNum);
    800038dc:	00000613          	li	a2,0
    800038e0:	00a00593          	li	a1,10
    800038e4:	00098513          	mv	a0,s3
    800038e8:	00001097          	auipc	ra,0x1
    800038ec:	6b0080e7          	jalr	1712(ra) # 80004f98 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800038f0:	00005517          	auipc	a0,0x5
    800038f4:	79050513          	addi	a0,a0,1936 # 80009080 <CONSOLE_STATUS+0x70>
    800038f8:	00001097          	auipc	ra,0x1
    800038fc:	4f0080e7          	jalr	1264(ra) # 80004de8 <_Z11printStringPKc>
    printInt(n);
    80003900:	00000613          	li	a2,0
    80003904:	00a00593          	li	a1,10
    80003908:	00048513          	mv	a0,s1
    8000390c:	00001097          	auipc	ra,0x1
    80003910:	68c080e7          	jalr	1676(ra) # 80004f98 <_Z8printIntiii>
    printString(".\n");
    80003914:	00005517          	auipc	a0,0x5
    80003918:	78450513          	addi	a0,a0,1924 # 80009098 <CONSOLE_STATUS+0x88>
    8000391c:	00001097          	auipc	ra,0x1
    80003920:	4cc080e7          	jalr	1228(ra) # 80004de8 <_Z11printStringPKc>
    if (threadNum > n) {
    80003924:	0334c463          	blt	s1,s3,8000394c <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003928:	03305c63          	blez	s3,80003960 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000392c:	03800513          	li	a0,56
    80003930:	ffffe097          	auipc	ra,0xffffe
    80003934:	4a8080e7          	jalr	1192(ra) # 80001dd8 <_Znwm>
    80003938:	00050a93          	mv	s5,a0
    8000393c:	00048593          	mv	a1,s1
    80003940:	00001097          	auipc	ra,0x1
    80003944:	778080e7          	jalr	1912(ra) # 800050b8 <_ZN9BufferCPPC1Ei>
    80003948:	0300006f          	j	80003978 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000394c:	00005517          	auipc	a0,0x5
    80003950:	75450513          	addi	a0,a0,1876 # 800090a0 <CONSOLE_STATUS+0x90>
    80003954:	00001097          	auipc	ra,0x1
    80003958:	494080e7          	jalr	1172(ra) # 80004de8 <_Z11printStringPKc>
        return;
    8000395c:	0140006f          	j	80003970 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003960:	00005517          	auipc	a0,0x5
    80003964:	78050513          	addi	a0,a0,1920 # 800090e0 <CONSOLE_STATUS+0xd0>
    80003968:	00001097          	auipc	ra,0x1
    8000396c:	480080e7          	jalr	1152(ra) # 80004de8 <_Z11printStringPKc>
        return;
    80003970:	000c0113          	mv	sp,s8
    80003974:	2140006f          	j	80003b88 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003978:	01000513          	li	a0,16
    8000397c:	ffffe097          	auipc	ra,0xffffe
    80003980:	45c080e7          	jalr	1116(ra) # 80001dd8 <_Znwm>
    80003984:	00050913          	mv	s2,a0
    80003988:	00000593          	li	a1,0
    8000398c:	ffffe097          	auipc	ra,0xffffe
    80003990:	aac080e7          	jalr	-1364(ra) # 80001438 <_ZN9SemaphoreC1Ej>
    80003994:	00008797          	auipc	a5,0x8
    80003998:	b327ba23          	sd	s2,-1228(a5) # 8000b4c8 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000399c:	00399793          	slli	a5,s3,0x3
    800039a0:	00f78793          	addi	a5,a5,15
    800039a4:	ff07f793          	andi	a5,a5,-16
    800039a8:	40f10133          	sub	sp,sp,a5
    800039ac:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800039b0:	0019871b          	addiw	a4,s3,1
    800039b4:	00171793          	slli	a5,a4,0x1
    800039b8:	00e787b3          	add	a5,a5,a4
    800039bc:	00379793          	slli	a5,a5,0x3
    800039c0:	00f78793          	addi	a5,a5,15
    800039c4:	ff07f793          	andi	a5,a5,-16
    800039c8:	40f10133          	sub	sp,sp,a5
    800039cc:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800039d0:	00199493          	slli	s1,s3,0x1
    800039d4:	013484b3          	add	s1,s1,s3
    800039d8:	00349493          	slli	s1,s1,0x3
    800039dc:	009b04b3          	add	s1,s6,s1
    800039e0:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800039e4:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800039e8:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800039ec:	02800513          	li	a0,40
    800039f0:	ffffe097          	auipc	ra,0xffffe
    800039f4:	3e8080e7          	jalr	1000(ra) # 80001dd8 <_Znwm>
    800039f8:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800039fc:	ffffe097          	auipc	ra,0xffffe
    80003a00:	9a8080e7          	jalr	-1624(ra) # 800013a4 <_ZN6ThreadC1Ev>
    80003a04:	00008797          	auipc	a5,0x8
    80003a08:	93c78793          	addi	a5,a5,-1732 # 8000b340 <_ZTV8Consumer+0x10>
    80003a0c:	00fbb023          	sd	a5,0(s7)
    80003a10:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003a14:	000b8513          	mv	a0,s7
    80003a18:	ffffe097          	auipc	ra,0xffffe
    80003a1c:	9c4080e7          	jalr	-1596(ra) # 800013dc <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003a20:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003a24:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003a28:	00008797          	auipc	a5,0x8
    80003a2c:	aa07b783          	ld	a5,-1376(a5) # 8000b4c8 <_ZL10waitForAll>
    80003a30:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003a34:	02800513          	li	a0,40
    80003a38:	ffffe097          	auipc	ra,0xffffe
    80003a3c:	3a0080e7          	jalr	928(ra) # 80001dd8 <_Znwm>
    80003a40:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003a44:	ffffe097          	auipc	ra,0xffffe
    80003a48:	960080e7          	jalr	-1696(ra) # 800013a4 <_ZN6ThreadC1Ev>
    80003a4c:	00008797          	auipc	a5,0x8
    80003a50:	8a478793          	addi	a5,a5,-1884 # 8000b2f0 <_ZTV16ProducerKeyborad+0x10>
    80003a54:	00f4b023          	sd	a5,0(s1)
    80003a58:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003a5c:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003a60:	00048513          	mv	a0,s1
    80003a64:	ffffe097          	auipc	ra,0xffffe
    80003a68:	978080e7          	jalr	-1672(ra) # 800013dc <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003a6c:	00100913          	li	s2,1
    80003a70:	0300006f          	j	80003aa0 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003a74:	00008797          	auipc	a5,0x8
    80003a78:	8a478793          	addi	a5,a5,-1884 # 8000b318 <_ZTV8Producer+0x10>
    80003a7c:	00fcb023          	sd	a5,0(s9)
    80003a80:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003a84:	00391793          	slli	a5,s2,0x3
    80003a88:	00fa07b3          	add	a5,s4,a5
    80003a8c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003a90:	000c8513          	mv	a0,s9
    80003a94:	ffffe097          	auipc	ra,0xffffe
    80003a98:	948080e7          	jalr	-1720(ra) # 800013dc <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003a9c:	0019091b          	addiw	s2,s2,1
    80003aa0:	05395263          	bge	s2,s3,80003ae4 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003aa4:	00191493          	slli	s1,s2,0x1
    80003aa8:	012484b3          	add	s1,s1,s2
    80003aac:	00349493          	slli	s1,s1,0x3
    80003ab0:	009b04b3          	add	s1,s6,s1
    80003ab4:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003ab8:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003abc:	00008797          	auipc	a5,0x8
    80003ac0:	a0c7b783          	ld	a5,-1524(a5) # 8000b4c8 <_ZL10waitForAll>
    80003ac4:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003ac8:	02800513          	li	a0,40
    80003acc:	ffffe097          	auipc	ra,0xffffe
    80003ad0:	30c080e7          	jalr	780(ra) # 80001dd8 <_Znwm>
    80003ad4:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003ad8:	ffffe097          	auipc	ra,0xffffe
    80003adc:	8cc080e7          	jalr	-1844(ra) # 800013a4 <_ZN6ThreadC1Ev>
    80003ae0:	f95ff06f          	j	80003a74 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003ae4:	ffffe097          	auipc	ra,0xffffe
    80003ae8:	92c080e7          	jalr	-1748(ra) # 80001410 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003aec:	00000493          	li	s1,0
    80003af0:	0099ce63          	blt	s3,s1,80003b0c <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003af4:	00008517          	auipc	a0,0x8
    80003af8:	9d453503          	ld	a0,-1580(a0) # 8000b4c8 <_ZL10waitForAll>
    80003afc:	ffffe097          	auipc	ra,0xffffe
    80003b00:	974080e7          	jalr	-1676(ra) # 80001470 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003b04:	0014849b          	addiw	s1,s1,1
    80003b08:	fe9ff06f          	j	80003af0 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003b0c:	00008517          	auipc	a0,0x8
    80003b10:	9bc53503          	ld	a0,-1604(a0) # 8000b4c8 <_ZL10waitForAll>
    80003b14:	00050863          	beqz	a0,80003b24 <_Z20testConsumerProducerv+0x2f4>
    80003b18:	00053783          	ld	a5,0(a0)
    80003b1c:	0087b783          	ld	a5,8(a5)
    80003b20:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003b24:	00000493          	li	s1,0
    80003b28:	0080006f          	j	80003b30 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003b2c:	0014849b          	addiw	s1,s1,1
    80003b30:	0334d263          	bge	s1,s3,80003b54 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003b34:	00349793          	slli	a5,s1,0x3
    80003b38:	00fa07b3          	add	a5,s4,a5
    80003b3c:	0007b503          	ld	a0,0(a5)
    80003b40:	fe0506e3          	beqz	a0,80003b2c <_Z20testConsumerProducerv+0x2fc>
    80003b44:	00053783          	ld	a5,0(a0)
    80003b48:	0087b783          	ld	a5,8(a5)
    80003b4c:	000780e7          	jalr	a5
    80003b50:	fddff06f          	j	80003b2c <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003b54:	000b8a63          	beqz	s7,80003b68 <_Z20testConsumerProducerv+0x338>
    80003b58:	000bb783          	ld	a5,0(s7)
    80003b5c:	0087b783          	ld	a5,8(a5)
    80003b60:	000b8513          	mv	a0,s7
    80003b64:	000780e7          	jalr	a5
    delete buffer;
    80003b68:	000a8e63          	beqz	s5,80003b84 <_Z20testConsumerProducerv+0x354>
    80003b6c:	000a8513          	mv	a0,s5
    80003b70:	00002097          	auipc	ra,0x2
    80003b74:	840080e7          	jalr	-1984(ra) # 800053b0 <_ZN9BufferCPPD1Ev>
    80003b78:	000a8513          	mv	a0,s5
    80003b7c:	ffffe097          	auipc	ra,0xffffe
    80003b80:	2ac080e7          	jalr	684(ra) # 80001e28 <_ZdlPv>
    80003b84:	000c0113          	mv	sp,s8
}
    80003b88:	f8040113          	addi	sp,s0,-128
    80003b8c:	07813083          	ld	ra,120(sp)
    80003b90:	07013403          	ld	s0,112(sp)
    80003b94:	06813483          	ld	s1,104(sp)
    80003b98:	06013903          	ld	s2,96(sp)
    80003b9c:	05813983          	ld	s3,88(sp)
    80003ba0:	05013a03          	ld	s4,80(sp)
    80003ba4:	04813a83          	ld	s5,72(sp)
    80003ba8:	04013b03          	ld	s6,64(sp)
    80003bac:	03813b83          	ld	s7,56(sp)
    80003bb0:	03013c03          	ld	s8,48(sp)
    80003bb4:	02813c83          	ld	s9,40(sp)
    80003bb8:	08010113          	addi	sp,sp,128
    80003bbc:	00008067          	ret
    80003bc0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003bc4:	000a8513          	mv	a0,s5
    80003bc8:	ffffe097          	auipc	ra,0xffffe
    80003bcc:	260080e7          	jalr	608(ra) # 80001e28 <_ZdlPv>
    80003bd0:	00048513          	mv	a0,s1
    80003bd4:	00009097          	auipc	ra,0x9
    80003bd8:	9f4080e7          	jalr	-1548(ra) # 8000c5c8 <_Unwind_Resume>
    80003bdc:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003be0:	00090513          	mv	a0,s2
    80003be4:	ffffe097          	auipc	ra,0xffffe
    80003be8:	244080e7          	jalr	580(ra) # 80001e28 <_ZdlPv>
    80003bec:	00048513          	mv	a0,s1
    80003bf0:	00009097          	auipc	ra,0x9
    80003bf4:	9d8080e7          	jalr	-1576(ra) # 8000c5c8 <_Unwind_Resume>
    80003bf8:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003bfc:	000b8513          	mv	a0,s7
    80003c00:	ffffe097          	auipc	ra,0xffffe
    80003c04:	228080e7          	jalr	552(ra) # 80001e28 <_ZdlPv>
    80003c08:	00048513          	mv	a0,s1
    80003c0c:	00009097          	auipc	ra,0x9
    80003c10:	9bc080e7          	jalr	-1604(ra) # 8000c5c8 <_Unwind_Resume>
    80003c14:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003c18:	00048513          	mv	a0,s1
    80003c1c:	ffffe097          	auipc	ra,0xffffe
    80003c20:	20c080e7          	jalr	524(ra) # 80001e28 <_ZdlPv>
    80003c24:	00090513          	mv	a0,s2
    80003c28:	00009097          	auipc	ra,0x9
    80003c2c:	9a0080e7          	jalr	-1632(ra) # 8000c5c8 <_Unwind_Resume>
    80003c30:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003c34:	000c8513          	mv	a0,s9
    80003c38:	ffffe097          	auipc	ra,0xffffe
    80003c3c:	1f0080e7          	jalr	496(ra) # 80001e28 <_ZdlPv>
    80003c40:	00048513          	mv	a0,s1
    80003c44:	00009097          	auipc	ra,0x9
    80003c48:	984080e7          	jalr	-1660(ra) # 8000c5c8 <_Unwind_Resume>

0000000080003c4c <_ZN8Consumer3runEv>:
    void run() override {
    80003c4c:	fd010113          	addi	sp,sp,-48
    80003c50:	02113423          	sd	ra,40(sp)
    80003c54:	02813023          	sd	s0,32(sp)
    80003c58:	00913c23          	sd	s1,24(sp)
    80003c5c:	01213823          	sd	s2,16(sp)
    80003c60:	01313423          	sd	s3,8(sp)
    80003c64:	03010413          	addi	s0,sp,48
    80003c68:	00050913          	mv	s2,a0
        int i = 0;
    80003c6c:	00000993          	li	s3,0
    80003c70:	0100006f          	j	80003c80 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003c74:	00a00513          	li	a0,10
    80003c78:	ffffe097          	auipc	ra,0xffffe
    80003c7c:	8bc080e7          	jalr	-1860(ra) # 80001534 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003c80:	00008797          	auipc	a5,0x8
    80003c84:	8407a783          	lw	a5,-1984(a5) # 8000b4c0 <_ZL9threadEnd>
    80003c88:	04079a63          	bnez	a5,80003cdc <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003c8c:	02093783          	ld	a5,32(s2)
    80003c90:	0087b503          	ld	a0,8(a5)
    80003c94:	00001097          	auipc	ra,0x1
    80003c98:	608080e7          	jalr	1544(ra) # 8000529c <_ZN9BufferCPP3getEv>
            i++;
    80003c9c:	0019849b          	addiw	s1,s3,1
    80003ca0:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003ca4:	0ff57513          	andi	a0,a0,255
    80003ca8:	ffffe097          	auipc	ra,0xffffe
    80003cac:	88c080e7          	jalr	-1908(ra) # 80001534 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003cb0:	05000793          	li	a5,80
    80003cb4:	02f4e4bb          	remw	s1,s1,a5
    80003cb8:	fc0494e3          	bnez	s1,80003c80 <_ZN8Consumer3runEv+0x34>
    80003cbc:	fb9ff06f          	j	80003c74 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003cc0:	02093783          	ld	a5,32(s2)
    80003cc4:	0087b503          	ld	a0,8(a5)
    80003cc8:	00001097          	auipc	ra,0x1
    80003ccc:	5d4080e7          	jalr	1492(ra) # 8000529c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003cd0:	0ff57513          	andi	a0,a0,255
    80003cd4:	ffffe097          	auipc	ra,0xffffe
    80003cd8:	860080e7          	jalr	-1952(ra) # 80001534 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003cdc:	02093783          	ld	a5,32(s2)
    80003ce0:	0087b503          	ld	a0,8(a5)
    80003ce4:	00001097          	auipc	ra,0x1
    80003ce8:	644080e7          	jalr	1604(ra) # 80005328 <_ZN9BufferCPP6getCntEv>
    80003cec:	fca04ae3          	bgtz	a0,80003cc0 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003cf0:	02093783          	ld	a5,32(s2)
    80003cf4:	0107b503          	ld	a0,16(a5)
    80003cf8:	ffffd097          	auipc	ra,0xffffd
    80003cfc:	7b0080e7          	jalr	1968(ra) # 800014a8 <_ZN9Semaphore6signalEv>
    }
    80003d00:	02813083          	ld	ra,40(sp)
    80003d04:	02013403          	ld	s0,32(sp)
    80003d08:	01813483          	ld	s1,24(sp)
    80003d0c:	01013903          	ld	s2,16(sp)
    80003d10:	00813983          	ld	s3,8(sp)
    80003d14:	03010113          	addi	sp,sp,48
    80003d18:	00008067          	ret

0000000080003d1c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003d1c:	ff010113          	addi	sp,sp,-16
    80003d20:	00113423          	sd	ra,8(sp)
    80003d24:	00813023          	sd	s0,0(sp)
    80003d28:	01010413          	addi	s0,sp,16
    80003d2c:	00007797          	auipc	a5,0x7
    80003d30:	61478793          	addi	a5,a5,1556 # 8000b340 <_ZTV8Consumer+0x10>
    80003d34:	00f53023          	sd	a5,0(a0)
    80003d38:	ffffd097          	auipc	ra,0xffffd
    80003d3c:	528080e7          	jalr	1320(ra) # 80001260 <_ZN6ThreadD1Ev>
    80003d40:	00813083          	ld	ra,8(sp)
    80003d44:	00013403          	ld	s0,0(sp)
    80003d48:	01010113          	addi	sp,sp,16
    80003d4c:	00008067          	ret

0000000080003d50 <_ZN8ConsumerD0Ev>:
    80003d50:	fe010113          	addi	sp,sp,-32
    80003d54:	00113c23          	sd	ra,24(sp)
    80003d58:	00813823          	sd	s0,16(sp)
    80003d5c:	00913423          	sd	s1,8(sp)
    80003d60:	02010413          	addi	s0,sp,32
    80003d64:	00050493          	mv	s1,a0
    80003d68:	00007797          	auipc	a5,0x7
    80003d6c:	5d878793          	addi	a5,a5,1496 # 8000b340 <_ZTV8Consumer+0x10>
    80003d70:	00f53023          	sd	a5,0(a0)
    80003d74:	ffffd097          	auipc	ra,0xffffd
    80003d78:	4ec080e7          	jalr	1260(ra) # 80001260 <_ZN6ThreadD1Ev>
    80003d7c:	00048513          	mv	a0,s1
    80003d80:	ffffe097          	auipc	ra,0xffffe
    80003d84:	0a8080e7          	jalr	168(ra) # 80001e28 <_ZdlPv>
    80003d88:	01813083          	ld	ra,24(sp)
    80003d8c:	01013403          	ld	s0,16(sp)
    80003d90:	00813483          	ld	s1,8(sp)
    80003d94:	02010113          	addi	sp,sp,32
    80003d98:	00008067          	ret

0000000080003d9c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003d9c:	ff010113          	addi	sp,sp,-16
    80003da0:	00113423          	sd	ra,8(sp)
    80003da4:	00813023          	sd	s0,0(sp)
    80003da8:	01010413          	addi	s0,sp,16
    80003dac:	00007797          	auipc	a5,0x7
    80003db0:	54478793          	addi	a5,a5,1348 # 8000b2f0 <_ZTV16ProducerKeyborad+0x10>
    80003db4:	00f53023          	sd	a5,0(a0)
    80003db8:	ffffd097          	auipc	ra,0xffffd
    80003dbc:	4a8080e7          	jalr	1192(ra) # 80001260 <_ZN6ThreadD1Ev>
    80003dc0:	00813083          	ld	ra,8(sp)
    80003dc4:	00013403          	ld	s0,0(sp)
    80003dc8:	01010113          	addi	sp,sp,16
    80003dcc:	00008067          	ret

0000000080003dd0 <_ZN16ProducerKeyboradD0Ev>:
    80003dd0:	fe010113          	addi	sp,sp,-32
    80003dd4:	00113c23          	sd	ra,24(sp)
    80003dd8:	00813823          	sd	s0,16(sp)
    80003ddc:	00913423          	sd	s1,8(sp)
    80003de0:	02010413          	addi	s0,sp,32
    80003de4:	00050493          	mv	s1,a0
    80003de8:	00007797          	auipc	a5,0x7
    80003dec:	50878793          	addi	a5,a5,1288 # 8000b2f0 <_ZTV16ProducerKeyborad+0x10>
    80003df0:	00f53023          	sd	a5,0(a0)
    80003df4:	ffffd097          	auipc	ra,0xffffd
    80003df8:	46c080e7          	jalr	1132(ra) # 80001260 <_ZN6ThreadD1Ev>
    80003dfc:	00048513          	mv	a0,s1
    80003e00:	ffffe097          	auipc	ra,0xffffe
    80003e04:	028080e7          	jalr	40(ra) # 80001e28 <_ZdlPv>
    80003e08:	01813083          	ld	ra,24(sp)
    80003e0c:	01013403          	ld	s0,16(sp)
    80003e10:	00813483          	ld	s1,8(sp)
    80003e14:	02010113          	addi	sp,sp,32
    80003e18:	00008067          	ret

0000000080003e1c <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003e1c:	ff010113          	addi	sp,sp,-16
    80003e20:	00113423          	sd	ra,8(sp)
    80003e24:	00813023          	sd	s0,0(sp)
    80003e28:	01010413          	addi	s0,sp,16
    80003e2c:	00007797          	auipc	a5,0x7
    80003e30:	4ec78793          	addi	a5,a5,1260 # 8000b318 <_ZTV8Producer+0x10>
    80003e34:	00f53023          	sd	a5,0(a0)
    80003e38:	ffffd097          	auipc	ra,0xffffd
    80003e3c:	428080e7          	jalr	1064(ra) # 80001260 <_ZN6ThreadD1Ev>
    80003e40:	00813083          	ld	ra,8(sp)
    80003e44:	00013403          	ld	s0,0(sp)
    80003e48:	01010113          	addi	sp,sp,16
    80003e4c:	00008067          	ret

0000000080003e50 <_ZN8ProducerD0Ev>:
    80003e50:	fe010113          	addi	sp,sp,-32
    80003e54:	00113c23          	sd	ra,24(sp)
    80003e58:	00813823          	sd	s0,16(sp)
    80003e5c:	00913423          	sd	s1,8(sp)
    80003e60:	02010413          	addi	s0,sp,32
    80003e64:	00050493          	mv	s1,a0
    80003e68:	00007797          	auipc	a5,0x7
    80003e6c:	4b078793          	addi	a5,a5,1200 # 8000b318 <_ZTV8Producer+0x10>
    80003e70:	00f53023          	sd	a5,0(a0)
    80003e74:	ffffd097          	auipc	ra,0xffffd
    80003e78:	3ec080e7          	jalr	1004(ra) # 80001260 <_ZN6ThreadD1Ev>
    80003e7c:	00048513          	mv	a0,s1
    80003e80:	ffffe097          	auipc	ra,0xffffe
    80003e84:	fa8080e7          	jalr	-88(ra) # 80001e28 <_ZdlPv>
    80003e88:	01813083          	ld	ra,24(sp)
    80003e8c:	01013403          	ld	s0,16(sp)
    80003e90:	00813483          	ld	s1,8(sp)
    80003e94:	02010113          	addi	sp,sp,32
    80003e98:	00008067          	ret

0000000080003e9c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003e9c:	fe010113          	addi	sp,sp,-32
    80003ea0:	00113c23          	sd	ra,24(sp)
    80003ea4:	00813823          	sd	s0,16(sp)
    80003ea8:	00913423          	sd	s1,8(sp)
    80003eac:	02010413          	addi	s0,sp,32
    80003eb0:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x35) {
    80003eb4:	ffffe097          	auipc	ra,0xffffe
    80003eb8:	9ec080e7          	jalr	-1556(ra) # 800018a0 <_Z4getcv>
    80003ebc:	0005059b          	sext.w	a1,a0
    80003ec0:	03500793          	li	a5,53
    80003ec4:	00f58c63          	beq	a1,a5,80003edc <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003ec8:	0204b783          	ld	a5,32(s1)
    80003ecc:	0087b503          	ld	a0,8(a5)
    80003ed0:	00001097          	auipc	ra,0x1
    80003ed4:	33c080e7          	jalr	828(ra) # 8000520c <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x35) {
    80003ed8:	fddff06f          	j	80003eb4 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003edc:	00100793          	li	a5,1
    80003ee0:	00007717          	auipc	a4,0x7
    80003ee4:	5ef72023          	sw	a5,1504(a4) # 8000b4c0 <_ZL9threadEnd>
        td->buffer->put('!');
    80003ee8:	0204b783          	ld	a5,32(s1)
    80003eec:	02100593          	li	a1,33
    80003ef0:	0087b503          	ld	a0,8(a5)
    80003ef4:	00001097          	auipc	ra,0x1
    80003ef8:	318080e7          	jalr	792(ra) # 8000520c <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003efc:	0204b783          	ld	a5,32(s1)
    80003f00:	0107b503          	ld	a0,16(a5)
    80003f04:	ffffd097          	auipc	ra,0xffffd
    80003f08:	5a4080e7          	jalr	1444(ra) # 800014a8 <_ZN9Semaphore6signalEv>
    }
    80003f0c:	01813083          	ld	ra,24(sp)
    80003f10:	01013403          	ld	s0,16(sp)
    80003f14:	00813483          	ld	s1,8(sp)
    80003f18:	02010113          	addi	sp,sp,32
    80003f1c:	00008067          	ret

0000000080003f20 <_ZN8Producer3runEv>:
    void run() override {
    80003f20:	fe010113          	addi	sp,sp,-32
    80003f24:	00113c23          	sd	ra,24(sp)
    80003f28:	00813823          	sd	s0,16(sp)
    80003f2c:	00913423          	sd	s1,8(sp)
    80003f30:	02010413          	addi	s0,sp,32
    80003f34:	00050493          	mv	s1,a0
        while (!threadEnd) {
    80003f38:	00007797          	auipc	a5,0x7
    80003f3c:	5887a783          	lw	a5,1416(a5) # 8000b4c0 <_ZL9threadEnd>
    80003f40:	02079063          	bnez	a5,80003f60 <_ZN8Producer3runEv+0x40>
            td->buffer->put(td->id + '0');
    80003f44:	0204b783          	ld	a5,32(s1)
    80003f48:	0007a583          	lw	a1,0(a5)
    80003f4c:	0305859b          	addiw	a1,a1,48
    80003f50:	0087b503          	ld	a0,8(a5)
    80003f54:	00001097          	auipc	ra,0x1
    80003f58:	2b8080e7          	jalr	696(ra) # 8000520c <_ZN9BufferCPP3putEi>
        while (!threadEnd) {
    80003f5c:	fddff06f          	j	80003f38 <_ZN8Producer3runEv+0x18>
        td->sem->signal();
    80003f60:	0204b783          	ld	a5,32(s1)
    80003f64:	0107b503          	ld	a0,16(a5)
    80003f68:	ffffd097          	auipc	ra,0xffffd
    80003f6c:	540080e7          	jalr	1344(ra) # 800014a8 <_ZN9Semaphore6signalEv>
    }
    80003f70:	01813083          	ld	ra,24(sp)
    80003f74:	01013403          	ld	s0,16(sp)
    80003f78:	00813483          	ld	s1,8(sp)
    80003f7c:	02010113          	addi	sp,sp,32
    80003f80:	00008067          	ret

0000000080003f84 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003f84:	fe010113          	addi	sp,sp,-32
    80003f88:	00113c23          	sd	ra,24(sp)
    80003f8c:	00813823          	sd	s0,16(sp)
    80003f90:	00913423          	sd	s1,8(sp)
    80003f94:	01213023          	sd	s2,0(sp)
    80003f98:	02010413          	addi	s0,sp,32
    80003f9c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003fa0:	00100793          	li	a5,1
    80003fa4:	02a7f863          	bgeu	a5,a0,80003fd4 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003fa8:	00a00793          	li	a5,10
    80003fac:	02f577b3          	remu	a5,a0,a5
    80003fb0:	02078e63          	beqz	a5,80003fec <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003fb4:	fff48513          	addi	a0,s1,-1
    80003fb8:	00000097          	auipc	ra,0x0
    80003fbc:	fcc080e7          	jalr	-52(ra) # 80003f84 <_ZL9fibonaccim>
    80003fc0:	00050913          	mv	s2,a0
    80003fc4:	ffe48513          	addi	a0,s1,-2
    80003fc8:	00000097          	auipc	ra,0x0
    80003fcc:	fbc080e7          	jalr	-68(ra) # 80003f84 <_ZL9fibonaccim>
    80003fd0:	00a90533          	add	a0,s2,a0
}
    80003fd4:	01813083          	ld	ra,24(sp)
    80003fd8:	01013403          	ld	s0,16(sp)
    80003fdc:	00813483          	ld	s1,8(sp)
    80003fe0:	00013903          	ld	s2,0(sp)
    80003fe4:	02010113          	addi	sp,sp,32
    80003fe8:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003fec:	ffffd097          	auipc	ra,0xffffd
    80003ff0:	720080e7          	jalr	1824(ra) # 8000170c <_Z15thread_dispatchv>
    80003ff4:	fc1ff06f          	j	80003fb4 <_ZL9fibonaccim+0x30>

0000000080003ff8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003ff8:	fe010113          	addi	sp,sp,-32
    80003ffc:	00113c23          	sd	ra,24(sp)
    80004000:	00813823          	sd	s0,16(sp)
    80004004:	00913423          	sd	s1,8(sp)
    80004008:	01213023          	sd	s2,0(sp)
    8000400c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004010:	00a00493          	li	s1,10
    80004014:	0400006f          	j	80004054 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004018:	00005517          	auipc	a0,0x5
    8000401c:	15850513          	addi	a0,a0,344 # 80009170 <CONSOLE_STATUS+0x160>
    80004020:	00001097          	auipc	ra,0x1
    80004024:	dc8080e7          	jalr	-568(ra) # 80004de8 <_Z11printStringPKc>
    80004028:	00000613          	li	a2,0
    8000402c:	00a00593          	li	a1,10
    80004030:	00048513          	mv	a0,s1
    80004034:	00001097          	auipc	ra,0x1
    80004038:	f64080e7          	jalr	-156(ra) # 80004f98 <_Z8printIntiii>
    8000403c:	00005517          	auipc	a0,0x5
    80004040:	35450513          	addi	a0,a0,852 # 80009390 <CONSOLE_STATUS+0x380>
    80004044:	00001097          	auipc	ra,0x1
    80004048:	da4080e7          	jalr	-604(ra) # 80004de8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000404c:	0014849b          	addiw	s1,s1,1
    80004050:	0ff4f493          	andi	s1,s1,255
    80004054:	00c00793          	li	a5,12
    80004058:	fc97f0e3          	bgeu	a5,s1,80004018 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000405c:	00005517          	auipc	a0,0x5
    80004060:	11c50513          	addi	a0,a0,284 # 80009178 <CONSOLE_STATUS+0x168>
    80004064:	00001097          	auipc	ra,0x1
    80004068:	d84080e7          	jalr	-636(ra) # 80004de8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000406c:	00500313          	li	t1,5
    thread_dispatch();
    80004070:	ffffd097          	auipc	ra,0xffffd
    80004074:	69c080e7          	jalr	1692(ra) # 8000170c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004078:	01000513          	li	a0,16
    8000407c:	00000097          	auipc	ra,0x0
    80004080:	f08080e7          	jalr	-248(ra) # 80003f84 <_ZL9fibonaccim>
    80004084:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004088:	00005517          	auipc	a0,0x5
    8000408c:	10050513          	addi	a0,a0,256 # 80009188 <CONSOLE_STATUS+0x178>
    80004090:	00001097          	auipc	ra,0x1
    80004094:	d58080e7          	jalr	-680(ra) # 80004de8 <_Z11printStringPKc>
    80004098:	00000613          	li	a2,0
    8000409c:	00a00593          	li	a1,10
    800040a0:	0009051b          	sext.w	a0,s2
    800040a4:	00001097          	auipc	ra,0x1
    800040a8:	ef4080e7          	jalr	-268(ra) # 80004f98 <_Z8printIntiii>
    800040ac:	00005517          	auipc	a0,0x5
    800040b0:	2e450513          	addi	a0,a0,740 # 80009390 <CONSOLE_STATUS+0x380>
    800040b4:	00001097          	auipc	ra,0x1
    800040b8:	d34080e7          	jalr	-716(ra) # 80004de8 <_Z11printStringPKc>
    800040bc:	0400006f          	j	800040fc <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800040c0:	00005517          	auipc	a0,0x5
    800040c4:	0b050513          	addi	a0,a0,176 # 80009170 <CONSOLE_STATUS+0x160>
    800040c8:	00001097          	auipc	ra,0x1
    800040cc:	d20080e7          	jalr	-736(ra) # 80004de8 <_Z11printStringPKc>
    800040d0:	00000613          	li	a2,0
    800040d4:	00a00593          	li	a1,10
    800040d8:	00048513          	mv	a0,s1
    800040dc:	00001097          	auipc	ra,0x1
    800040e0:	ebc080e7          	jalr	-324(ra) # 80004f98 <_Z8printIntiii>
    800040e4:	00005517          	auipc	a0,0x5
    800040e8:	2ac50513          	addi	a0,a0,684 # 80009390 <CONSOLE_STATUS+0x380>
    800040ec:	00001097          	auipc	ra,0x1
    800040f0:	cfc080e7          	jalr	-772(ra) # 80004de8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800040f4:	0014849b          	addiw	s1,s1,1
    800040f8:	0ff4f493          	andi	s1,s1,255
    800040fc:	00f00793          	li	a5,15
    80004100:	fc97f0e3          	bgeu	a5,s1,800040c0 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004104:	00005517          	auipc	a0,0x5
    80004108:	09450513          	addi	a0,a0,148 # 80009198 <CONSOLE_STATUS+0x188>
    8000410c:	00001097          	auipc	ra,0x1
    80004110:	cdc080e7          	jalr	-804(ra) # 80004de8 <_Z11printStringPKc>
    finishedD = true;
    80004114:	00100793          	li	a5,1
    80004118:	00007717          	auipc	a4,0x7
    8000411c:	3af70c23          	sb	a5,952(a4) # 8000b4d0 <_ZL9finishedD>
    thread_dispatch();
    80004120:	ffffd097          	auipc	ra,0xffffd
    80004124:	5ec080e7          	jalr	1516(ra) # 8000170c <_Z15thread_dispatchv>
}
    80004128:	01813083          	ld	ra,24(sp)
    8000412c:	01013403          	ld	s0,16(sp)
    80004130:	00813483          	ld	s1,8(sp)
    80004134:	00013903          	ld	s2,0(sp)
    80004138:	02010113          	addi	sp,sp,32
    8000413c:	00008067          	ret

0000000080004140 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004140:	fe010113          	addi	sp,sp,-32
    80004144:	00113c23          	sd	ra,24(sp)
    80004148:	00813823          	sd	s0,16(sp)
    8000414c:	00913423          	sd	s1,8(sp)
    80004150:	01213023          	sd	s2,0(sp)
    80004154:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004158:	00000493          	li	s1,0
    8000415c:	0400006f          	j	8000419c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004160:	00005517          	auipc	a0,0x5
    80004164:	fe050513          	addi	a0,a0,-32 # 80009140 <CONSOLE_STATUS+0x130>
    80004168:	00001097          	auipc	ra,0x1
    8000416c:	c80080e7          	jalr	-896(ra) # 80004de8 <_Z11printStringPKc>
    80004170:	00000613          	li	a2,0
    80004174:	00a00593          	li	a1,10
    80004178:	00048513          	mv	a0,s1
    8000417c:	00001097          	auipc	ra,0x1
    80004180:	e1c080e7          	jalr	-484(ra) # 80004f98 <_Z8printIntiii>
    80004184:	00005517          	auipc	a0,0x5
    80004188:	20c50513          	addi	a0,a0,524 # 80009390 <CONSOLE_STATUS+0x380>
    8000418c:	00001097          	auipc	ra,0x1
    80004190:	c5c080e7          	jalr	-932(ra) # 80004de8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004194:	0014849b          	addiw	s1,s1,1
    80004198:	0ff4f493          	andi	s1,s1,255
    8000419c:	00200793          	li	a5,2
    800041a0:	fc97f0e3          	bgeu	a5,s1,80004160 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800041a4:	00005517          	auipc	a0,0x5
    800041a8:	fa450513          	addi	a0,a0,-92 # 80009148 <CONSOLE_STATUS+0x138>
    800041ac:	00001097          	auipc	ra,0x1
    800041b0:	c3c080e7          	jalr	-964(ra) # 80004de8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800041b4:	00700313          	li	t1,7
    thread_dispatch();
    800041b8:	ffffd097          	auipc	ra,0xffffd
    800041bc:	554080e7          	jalr	1364(ra) # 8000170c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800041c0:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800041c4:	00005517          	auipc	a0,0x5
    800041c8:	f9450513          	addi	a0,a0,-108 # 80009158 <CONSOLE_STATUS+0x148>
    800041cc:	00001097          	auipc	ra,0x1
    800041d0:	c1c080e7          	jalr	-996(ra) # 80004de8 <_Z11printStringPKc>
    800041d4:	00000613          	li	a2,0
    800041d8:	00a00593          	li	a1,10
    800041dc:	0009051b          	sext.w	a0,s2
    800041e0:	00001097          	auipc	ra,0x1
    800041e4:	db8080e7          	jalr	-584(ra) # 80004f98 <_Z8printIntiii>
    800041e8:	00005517          	auipc	a0,0x5
    800041ec:	1a850513          	addi	a0,a0,424 # 80009390 <CONSOLE_STATUS+0x380>
    800041f0:	00001097          	auipc	ra,0x1
    800041f4:	bf8080e7          	jalr	-1032(ra) # 80004de8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800041f8:	00c00513          	li	a0,12
    800041fc:	00000097          	auipc	ra,0x0
    80004200:	d88080e7          	jalr	-632(ra) # 80003f84 <_ZL9fibonaccim>
    80004204:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004208:	00005517          	auipc	a0,0x5
    8000420c:	f5850513          	addi	a0,a0,-168 # 80009160 <CONSOLE_STATUS+0x150>
    80004210:	00001097          	auipc	ra,0x1
    80004214:	bd8080e7          	jalr	-1064(ra) # 80004de8 <_Z11printStringPKc>
    80004218:	00000613          	li	a2,0
    8000421c:	00a00593          	li	a1,10
    80004220:	0009051b          	sext.w	a0,s2
    80004224:	00001097          	auipc	ra,0x1
    80004228:	d74080e7          	jalr	-652(ra) # 80004f98 <_Z8printIntiii>
    8000422c:	00005517          	auipc	a0,0x5
    80004230:	16450513          	addi	a0,a0,356 # 80009390 <CONSOLE_STATUS+0x380>
    80004234:	00001097          	auipc	ra,0x1
    80004238:	bb4080e7          	jalr	-1100(ra) # 80004de8 <_Z11printStringPKc>
    8000423c:	0400006f          	j	8000427c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004240:	00005517          	auipc	a0,0x5
    80004244:	f0050513          	addi	a0,a0,-256 # 80009140 <CONSOLE_STATUS+0x130>
    80004248:	00001097          	auipc	ra,0x1
    8000424c:	ba0080e7          	jalr	-1120(ra) # 80004de8 <_Z11printStringPKc>
    80004250:	00000613          	li	a2,0
    80004254:	00a00593          	li	a1,10
    80004258:	00048513          	mv	a0,s1
    8000425c:	00001097          	auipc	ra,0x1
    80004260:	d3c080e7          	jalr	-708(ra) # 80004f98 <_Z8printIntiii>
    80004264:	00005517          	auipc	a0,0x5
    80004268:	12c50513          	addi	a0,a0,300 # 80009390 <CONSOLE_STATUS+0x380>
    8000426c:	00001097          	auipc	ra,0x1
    80004270:	b7c080e7          	jalr	-1156(ra) # 80004de8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004274:	0014849b          	addiw	s1,s1,1
    80004278:	0ff4f493          	andi	s1,s1,255
    8000427c:	00500793          	li	a5,5
    80004280:	fc97f0e3          	bgeu	a5,s1,80004240 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004284:	00005517          	auipc	a0,0x5
    80004288:	e9450513          	addi	a0,a0,-364 # 80009118 <CONSOLE_STATUS+0x108>
    8000428c:	00001097          	auipc	ra,0x1
    80004290:	b5c080e7          	jalr	-1188(ra) # 80004de8 <_Z11printStringPKc>
    finishedC = true;
    80004294:	00100793          	li	a5,1
    80004298:	00007717          	auipc	a4,0x7
    8000429c:	22f70ca3          	sb	a5,569(a4) # 8000b4d1 <_ZL9finishedC>
    thread_dispatch();
    800042a0:	ffffd097          	auipc	ra,0xffffd
    800042a4:	46c080e7          	jalr	1132(ra) # 8000170c <_Z15thread_dispatchv>
}
    800042a8:	01813083          	ld	ra,24(sp)
    800042ac:	01013403          	ld	s0,16(sp)
    800042b0:	00813483          	ld	s1,8(sp)
    800042b4:	00013903          	ld	s2,0(sp)
    800042b8:	02010113          	addi	sp,sp,32
    800042bc:	00008067          	ret

00000000800042c0 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800042c0:	fe010113          	addi	sp,sp,-32
    800042c4:	00113c23          	sd	ra,24(sp)
    800042c8:	00813823          	sd	s0,16(sp)
    800042cc:	00913423          	sd	s1,8(sp)
    800042d0:	01213023          	sd	s2,0(sp)
    800042d4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800042d8:	00000913          	li	s2,0
    800042dc:	0380006f          	j	80004314 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800042e0:	ffffd097          	auipc	ra,0xffffd
    800042e4:	42c080e7          	jalr	1068(ra) # 8000170c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800042e8:	00148493          	addi	s1,s1,1
    800042ec:	000027b7          	lui	a5,0x2
    800042f0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800042f4:	0097ee63          	bltu	a5,s1,80004310 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800042f8:	00000713          	li	a4,0
    800042fc:	000077b7          	lui	a5,0x7
    80004300:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004304:	fce7eee3          	bltu	a5,a4,800042e0 <_ZL11workerBodyBPv+0x20>
    80004308:	00170713          	addi	a4,a4,1
    8000430c:	ff1ff06f          	j	800042fc <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004310:	00190913          	addi	s2,s2,1
    80004314:	00f00793          	li	a5,15
    80004318:	0527e063          	bltu	a5,s2,80004358 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000431c:	00005517          	auipc	a0,0x5
    80004320:	e0c50513          	addi	a0,a0,-500 # 80009128 <CONSOLE_STATUS+0x118>
    80004324:	00001097          	auipc	ra,0x1
    80004328:	ac4080e7          	jalr	-1340(ra) # 80004de8 <_Z11printStringPKc>
    8000432c:	00000613          	li	a2,0
    80004330:	00a00593          	li	a1,10
    80004334:	0009051b          	sext.w	a0,s2
    80004338:	00001097          	auipc	ra,0x1
    8000433c:	c60080e7          	jalr	-928(ra) # 80004f98 <_Z8printIntiii>
    80004340:	00005517          	auipc	a0,0x5
    80004344:	05050513          	addi	a0,a0,80 # 80009390 <CONSOLE_STATUS+0x380>
    80004348:	00001097          	auipc	ra,0x1
    8000434c:	aa0080e7          	jalr	-1376(ra) # 80004de8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004350:	00000493          	li	s1,0
    80004354:	f99ff06f          	j	800042ec <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004358:	00005517          	auipc	a0,0x5
    8000435c:	dd850513          	addi	a0,a0,-552 # 80009130 <CONSOLE_STATUS+0x120>
    80004360:	00001097          	auipc	ra,0x1
    80004364:	a88080e7          	jalr	-1400(ra) # 80004de8 <_Z11printStringPKc>
    finishedB = true;
    80004368:	00100793          	li	a5,1
    8000436c:	00007717          	auipc	a4,0x7
    80004370:	16f70323          	sb	a5,358(a4) # 8000b4d2 <_ZL9finishedB>
    thread_dispatch();
    80004374:	ffffd097          	auipc	ra,0xffffd
    80004378:	398080e7          	jalr	920(ra) # 8000170c <_Z15thread_dispatchv>
}
    8000437c:	01813083          	ld	ra,24(sp)
    80004380:	01013403          	ld	s0,16(sp)
    80004384:	00813483          	ld	s1,8(sp)
    80004388:	00013903          	ld	s2,0(sp)
    8000438c:	02010113          	addi	sp,sp,32
    80004390:	00008067          	ret

0000000080004394 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004394:	fe010113          	addi	sp,sp,-32
    80004398:	00113c23          	sd	ra,24(sp)
    8000439c:	00813823          	sd	s0,16(sp)
    800043a0:	00913423          	sd	s1,8(sp)
    800043a4:	01213023          	sd	s2,0(sp)
    800043a8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800043ac:	00000913          	li	s2,0
    800043b0:	0380006f          	j	800043e8 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800043b4:	ffffd097          	auipc	ra,0xffffd
    800043b8:	358080e7          	jalr	856(ra) # 8000170c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800043bc:	00148493          	addi	s1,s1,1
    800043c0:	000027b7          	lui	a5,0x2
    800043c4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800043c8:	0097ee63          	bltu	a5,s1,800043e4 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800043cc:	00000713          	li	a4,0
    800043d0:	000077b7          	lui	a5,0x7
    800043d4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800043d8:	fce7eee3          	bltu	a5,a4,800043b4 <_ZL11workerBodyAPv+0x20>
    800043dc:	00170713          	addi	a4,a4,1
    800043e0:	ff1ff06f          	j	800043d0 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800043e4:	00190913          	addi	s2,s2,1
    800043e8:	00900793          	li	a5,9
    800043ec:	0527e063          	bltu	a5,s2,8000442c <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800043f0:	00005517          	auipc	a0,0x5
    800043f4:	d2050513          	addi	a0,a0,-736 # 80009110 <CONSOLE_STATUS+0x100>
    800043f8:	00001097          	auipc	ra,0x1
    800043fc:	9f0080e7          	jalr	-1552(ra) # 80004de8 <_Z11printStringPKc>
    80004400:	00000613          	li	a2,0
    80004404:	00a00593          	li	a1,10
    80004408:	0009051b          	sext.w	a0,s2
    8000440c:	00001097          	auipc	ra,0x1
    80004410:	b8c080e7          	jalr	-1140(ra) # 80004f98 <_Z8printIntiii>
    80004414:	00005517          	auipc	a0,0x5
    80004418:	f7c50513          	addi	a0,a0,-132 # 80009390 <CONSOLE_STATUS+0x380>
    8000441c:	00001097          	auipc	ra,0x1
    80004420:	9cc080e7          	jalr	-1588(ra) # 80004de8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004424:	00000493          	li	s1,0
    80004428:	f99ff06f          	j	800043c0 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    8000442c:	00005517          	auipc	a0,0x5
    80004430:	cec50513          	addi	a0,a0,-788 # 80009118 <CONSOLE_STATUS+0x108>
    80004434:	00001097          	auipc	ra,0x1
    80004438:	9b4080e7          	jalr	-1612(ra) # 80004de8 <_Z11printStringPKc>
    finishedA = true;
    8000443c:	00100793          	li	a5,1
    80004440:	00007717          	auipc	a4,0x7
    80004444:	08f709a3          	sb	a5,147(a4) # 8000b4d3 <_ZL9finishedA>
}
    80004448:	01813083          	ld	ra,24(sp)
    8000444c:	01013403          	ld	s0,16(sp)
    80004450:	00813483          	ld	s1,8(sp)
    80004454:	00013903          	ld	s2,0(sp)
    80004458:	02010113          	addi	sp,sp,32
    8000445c:	00008067          	ret

0000000080004460 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004460:	fd010113          	addi	sp,sp,-48
    80004464:	02113423          	sd	ra,40(sp)
    80004468:	02813023          	sd	s0,32(sp)
    8000446c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004470:	00000613          	li	a2,0
    80004474:	00000597          	auipc	a1,0x0
    80004478:	f2058593          	addi	a1,a1,-224 # 80004394 <_ZL11workerBodyAPv>
    8000447c:	fd040513          	addi	a0,s0,-48
    80004480:	ffffd097          	auipc	ra,0xffffd
    80004484:	1bc080e7          	jalr	444(ra) # 8000163c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004488:	00005517          	auipc	a0,0x5
    8000448c:	d2050513          	addi	a0,a0,-736 # 800091a8 <CONSOLE_STATUS+0x198>
    80004490:	00001097          	auipc	ra,0x1
    80004494:	958080e7          	jalr	-1704(ra) # 80004de8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004498:	00000613          	li	a2,0
    8000449c:	00000597          	auipc	a1,0x0
    800044a0:	e2458593          	addi	a1,a1,-476 # 800042c0 <_ZL11workerBodyBPv>
    800044a4:	fd840513          	addi	a0,s0,-40
    800044a8:	ffffd097          	auipc	ra,0xffffd
    800044ac:	194080e7          	jalr	404(ra) # 8000163c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800044b0:	00005517          	auipc	a0,0x5
    800044b4:	d1050513          	addi	a0,a0,-752 # 800091c0 <CONSOLE_STATUS+0x1b0>
    800044b8:	00001097          	auipc	ra,0x1
    800044bc:	930080e7          	jalr	-1744(ra) # 80004de8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800044c0:	00000613          	li	a2,0
    800044c4:	00000597          	auipc	a1,0x0
    800044c8:	c7c58593          	addi	a1,a1,-900 # 80004140 <_ZL11workerBodyCPv>
    800044cc:	fe040513          	addi	a0,s0,-32
    800044d0:	ffffd097          	auipc	ra,0xffffd
    800044d4:	16c080e7          	jalr	364(ra) # 8000163c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800044d8:	00005517          	auipc	a0,0x5
    800044dc:	d0050513          	addi	a0,a0,-768 # 800091d8 <CONSOLE_STATUS+0x1c8>
    800044e0:	00001097          	auipc	ra,0x1
    800044e4:	908080e7          	jalr	-1784(ra) # 80004de8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800044e8:	00000613          	li	a2,0
    800044ec:	00000597          	auipc	a1,0x0
    800044f0:	b0c58593          	addi	a1,a1,-1268 # 80003ff8 <_ZL11workerBodyDPv>
    800044f4:	fe840513          	addi	a0,s0,-24
    800044f8:	ffffd097          	auipc	ra,0xffffd
    800044fc:	144080e7          	jalr	324(ra) # 8000163c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004500:	00005517          	auipc	a0,0x5
    80004504:	cf050513          	addi	a0,a0,-784 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80004508:	00001097          	auipc	ra,0x1
    8000450c:	8e0080e7          	jalr	-1824(ra) # 80004de8 <_Z11printStringPKc>
    80004510:	00c0006f          	j	8000451c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004514:	ffffd097          	auipc	ra,0xffffd
    80004518:	1f8080e7          	jalr	504(ra) # 8000170c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000451c:	00007797          	auipc	a5,0x7
    80004520:	fb77c783          	lbu	a5,-73(a5) # 8000b4d3 <_ZL9finishedA>
    80004524:	fe0788e3          	beqz	a5,80004514 <_Z18Threads_C_API_testv+0xb4>
    80004528:	00007797          	auipc	a5,0x7
    8000452c:	faa7c783          	lbu	a5,-86(a5) # 8000b4d2 <_ZL9finishedB>
    80004530:	fe0782e3          	beqz	a5,80004514 <_Z18Threads_C_API_testv+0xb4>
    80004534:	00007797          	auipc	a5,0x7
    80004538:	f9d7c783          	lbu	a5,-99(a5) # 8000b4d1 <_ZL9finishedC>
    8000453c:	fc078ce3          	beqz	a5,80004514 <_Z18Threads_C_API_testv+0xb4>
    80004540:	00007797          	auipc	a5,0x7
    80004544:	f907c783          	lbu	a5,-112(a5) # 8000b4d0 <_ZL9finishedD>
    80004548:	fc0786e3          	beqz	a5,80004514 <_Z18Threads_C_API_testv+0xb4>
    }

}
    8000454c:	02813083          	ld	ra,40(sp)
    80004550:	02013403          	ld	s0,32(sp)
    80004554:	03010113          	addi	sp,sp,48
    80004558:	00008067          	ret

000000008000455c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    8000455c:	fd010113          	addi	sp,sp,-48
    80004560:	02113423          	sd	ra,40(sp)
    80004564:	02813023          	sd	s0,32(sp)
    80004568:	00913c23          	sd	s1,24(sp)
    8000456c:	01213823          	sd	s2,16(sp)
    80004570:	01313423          	sd	s3,8(sp)
    80004574:	03010413          	addi	s0,sp,48
    80004578:	00050993          	mv	s3,a0
    8000457c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004580:	00000913          	li	s2,0
    80004584:	00c0006f          	j	80004590 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004588:	ffffd097          	auipc	ra,0xffffd
    8000458c:	e88080e7          	jalr	-376(ra) # 80001410 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004590:	ffffd097          	auipc	ra,0xffffd
    80004594:	310080e7          	jalr	784(ra) # 800018a0 <_Z4getcv>
    80004598:	0005059b          	sext.w	a1,a0
    8000459c:	01b00793          	li	a5,27
    800045a0:	02f58a63          	beq	a1,a5,800045d4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800045a4:	0084b503          	ld	a0,8(s1)
    800045a8:	00001097          	auipc	ra,0x1
    800045ac:	c64080e7          	jalr	-924(ra) # 8000520c <_ZN9BufferCPP3putEi>
        i++;
    800045b0:	0019071b          	addiw	a4,s2,1
    800045b4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800045b8:	0004a683          	lw	a3,0(s1)
    800045bc:	0026979b          	slliw	a5,a3,0x2
    800045c0:	00d787bb          	addw	a5,a5,a3
    800045c4:	0017979b          	slliw	a5,a5,0x1
    800045c8:	02f767bb          	remw	a5,a4,a5
    800045cc:	fc0792e3          	bnez	a5,80004590 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800045d0:	fb9ff06f          	j	80004588 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800045d4:	00100793          	li	a5,1
    800045d8:	00007717          	auipc	a4,0x7
    800045dc:	f0f72023          	sw	a5,-256(a4) # 8000b4d8 <_ZL9threadEnd>
    td->buffer->put('!');
    800045e0:	0209b783          	ld	a5,32(s3)
    800045e4:	02100593          	li	a1,33
    800045e8:	0087b503          	ld	a0,8(a5)
    800045ec:	00001097          	auipc	ra,0x1
    800045f0:	c20080e7          	jalr	-992(ra) # 8000520c <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800045f4:	0104b503          	ld	a0,16(s1)
    800045f8:	ffffd097          	auipc	ra,0xffffd
    800045fc:	eb0080e7          	jalr	-336(ra) # 800014a8 <_ZN9Semaphore6signalEv>
}
    80004600:	02813083          	ld	ra,40(sp)
    80004604:	02013403          	ld	s0,32(sp)
    80004608:	01813483          	ld	s1,24(sp)
    8000460c:	01013903          	ld	s2,16(sp)
    80004610:	00813983          	ld	s3,8(sp)
    80004614:	03010113          	addi	sp,sp,48
    80004618:	00008067          	ret

000000008000461c <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    8000461c:	fe010113          	addi	sp,sp,-32
    80004620:	00113c23          	sd	ra,24(sp)
    80004624:	00813823          	sd	s0,16(sp)
    80004628:	00913423          	sd	s1,8(sp)
    8000462c:	01213023          	sd	s2,0(sp)
    80004630:	02010413          	addi	s0,sp,32
    80004634:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004638:	00000913          	li	s2,0
    8000463c:	00c0006f          	j	80004648 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004640:	ffffd097          	auipc	ra,0xffffd
    80004644:	dd0080e7          	jalr	-560(ra) # 80001410 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004648:	00007797          	auipc	a5,0x7
    8000464c:	e907a783          	lw	a5,-368(a5) # 8000b4d8 <_ZL9threadEnd>
    80004650:	02079e63          	bnez	a5,8000468c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004654:	0004a583          	lw	a1,0(s1)
    80004658:	0305859b          	addiw	a1,a1,48
    8000465c:	0084b503          	ld	a0,8(s1)
    80004660:	00001097          	auipc	ra,0x1
    80004664:	bac080e7          	jalr	-1108(ra) # 8000520c <_ZN9BufferCPP3putEi>
        i++;
    80004668:	0019071b          	addiw	a4,s2,1
    8000466c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004670:	0004a683          	lw	a3,0(s1)
    80004674:	0026979b          	slliw	a5,a3,0x2
    80004678:	00d787bb          	addw	a5,a5,a3
    8000467c:	0017979b          	slliw	a5,a5,0x1
    80004680:	02f767bb          	remw	a5,a4,a5
    80004684:	fc0792e3          	bnez	a5,80004648 <_ZN12ProducerSync8producerEPv+0x2c>
    80004688:	fb9ff06f          	j	80004640 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000468c:	0104b503          	ld	a0,16(s1)
    80004690:	ffffd097          	auipc	ra,0xffffd
    80004694:	e18080e7          	jalr	-488(ra) # 800014a8 <_ZN9Semaphore6signalEv>
}
    80004698:	01813083          	ld	ra,24(sp)
    8000469c:	01013403          	ld	s0,16(sp)
    800046a0:	00813483          	ld	s1,8(sp)
    800046a4:	00013903          	ld	s2,0(sp)
    800046a8:	02010113          	addi	sp,sp,32
    800046ac:	00008067          	ret

00000000800046b0 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800046b0:	fd010113          	addi	sp,sp,-48
    800046b4:	02113423          	sd	ra,40(sp)
    800046b8:	02813023          	sd	s0,32(sp)
    800046bc:	00913c23          	sd	s1,24(sp)
    800046c0:	01213823          	sd	s2,16(sp)
    800046c4:	01313423          	sd	s3,8(sp)
    800046c8:	01413023          	sd	s4,0(sp)
    800046cc:	03010413          	addi	s0,sp,48
    800046d0:	00050993          	mv	s3,a0
    800046d4:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800046d8:	00000a13          	li	s4,0
    800046dc:	01c0006f          	j	800046f8 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800046e0:	ffffd097          	auipc	ra,0xffffd
    800046e4:	d30080e7          	jalr	-720(ra) # 80001410 <_ZN6Thread8dispatchEv>
    800046e8:	0500006f          	j	80004738 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800046ec:	00a00513          	li	a0,10
    800046f0:	ffffd097          	auipc	ra,0xffffd
    800046f4:	1f4080e7          	jalr	500(ra) # 800018e4 <_Z4putcc>
    while (!threadEnd) {
    800046f8:	00007797          	auipc	a5,0x7
    800046fc:	de07a783          	lw	a5,-544(a5) # 8000b4d8 <_ZL9threadEnd>
    80004700:	06079263          	bnez	a5,80004764 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004704:	00893503          	ld	a0,8(s2)
    80004708:	00001097          	auipc	ra,0x1
    8000470c:	b94080e7          	jalr	-1132(ra) # 8000529c <_ZN9BufferCPP3getEv>
        i++;
    80004710:	001a049b          	addiw	s1,s4,1
    80004714:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004718:	0ff57513          	andi	a0,a0,255
    8000471c:	ffffd097          	auipc	ra,0xffffd
    80004720:	1c8080e7          	jalr	456(ra) # 800018e4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004724:	00092703          	lw	a4,0(s2)
    80004728:	0027179b          	slliw	a5,a4,0x2
    8000472c:	00e787bb          	addw	a5,a5,a4
    80004730:	02f4e7bb          	remw	a5,s1,a5
    80004734:	fa0786e3          	beqz	a5,800046e0 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004738:	05000793          	li	a5,80
    8000473c:	02f4e4bb          	remw	s1,s1,a5
    80004740:	fa049ce3          	bnez	s1,800046f8 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004744:	fa9ff06f          	j	800046ec <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004748:	0209b783          	ld	a5,32(s3)
    8000474c:	0087b503          	ld	a0,8(a5)
    80004750:	00001097          	auipc	ra,0x1
    80004754:	b4c080e7          	jalr	-1204(ra) # 8000529c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004758:	0ff57513          	andi	a0,a0,255
    8000475c:	ffffd097          	auipc	ra,0xffffd
    80004760:	dd8080e7          	jalr	-552(ra) # 80001534 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004764:	0209b783          	ld	a5,32(s3)
    80004768:	0087b503          	ld	a0,8(a5)
    8000476c:	00001097          	auipc	ra,0x1
    80004770:	bbc080e7          	jalr	-1092(ra) # 80005328 <_ZN9BufferCPP6getCntEv>
    80004774:	fca04ae3          	bgtz	a0,80004748 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004778:	01093503          	ld	a0,16(s2)
    8000477c:	ffffd097          	auipc	ra,0xffffd
    80004780:	d2c080e7          	jalr	-724(ra) # 800014a8 <_ZN9Semaphore6signalEv>
}
    80004784:	02813083          	ld	ra,40(sp)
    80004788:	02013403          	ld	s0,32(sp)
    8000478c:	01813483          	ld	s1,24(sp)
    80004790:	01013903          	ld	s2,16(sp)
    80004794:	00813983          	ld	s3,8(sp)
    80004798:	00013a03          	ld	s4,0(sp)
    8000479c:	03010113          	addi	sp,sp,48
    800047a0:	00008067          	ret

00000000800047a4 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800047a4:	f8010113          	addi	sp,sp,-128
    800047a8:	06113c23          	sd	ra,120(sp)
    800047ac:	06813823          	sd	s0,112(sp)
    800047b0:	06913423          	sd	s1,104(sp)
    800047b4:	07213023          	sd	s2,96(sp)
    800047b8:	05313c23          	sd	s3,88(sp)
    800047bc:	05413823          	sd	s4,80(sp)
    800047c0:	05513423          	sd	s5,72(sp)
    800047c4:	05613023          	sd	s6,64(sp)
    800047c8:	03713c23          	sd	s7,56(sp)
    800047cc:	03813823          	sd	s8,48(sp)
    800047d0:	03913423          	sd	s9,40(sp)
    800047d4:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    800047d8:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    800047dc:	00005517          	auipc	a0,0x5
    800047e0:	84c50513          	addi	a0,a0,-1972 # 80009028 <CONSOLE_STATUS+0x18>
    800047e4:	00000097          	auipc	ra,0x0
    800047e8:	604080e7          	jalr	1540(ra) # 80004de8 <_Z11printStringPKc>
    getString(input, 30);
    800047ec:	01e00593          	li	a1,30
    800047f0:	f8040493          	addi	s1,s0,-128
    800047f4:	00048513          	mv	a0,s1
    800047f8:	00000097          	auipc	ra,0x0
    800047fc:	678080e7          	jalr	1656(ra) # 80004e70 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004800:	00048513          	mv	a0,s1
    80004804:	00000097          	auipc	ra,0x0
    80004808:	744080e7          	jalr	1860(ra) # 80004f48 <_Z11stringToIntPKc>
    8000480c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004810:	00005517          	auipc	a0,0x5
    80004814:	83850513          	addi	a0,a0,-1992 # 80009048 <CONSOLE_STATUS+0x38>
    80004818:	00000097          	auipc	ra,0x0
    8000481c:	5d0080e7          	jalr	1488(ra) # 80004de8 <_Z11printStringPKc>
    getString(input, 30);
    80004820:	01e00593          	li	a1,30
    80004824:	00048513          	mv	a0,s1
    80004828:	00000097          	auipc	ra,0x0
    8000482c:	648080e7          	jalr	1608(ra) # 80004e70 <_Z9getStringPci>
    n = stringToInt(input);
    80004830:	00048513          	mv	a0,s1
    80004834:	00000097          	auipc	ra,0x0
    80004838:	714080e7          	jalr	1812(ra) # 80004f48 <_Z11stringToIntPKc>
    8000483c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004840:	00005517          	auipc	a0,0x5
    80004844:	82850513          	addi	a0,a0,-2008 # 80009068 <CONSOLE_STATUS+0x58>
    80004848:	00000097          	auipc	ra,0x0
    8000484c:	5a0080e7          	jalr	1440(ra) # 80004de8 <_Z11printStringPKc>
    80004850:	00000613          	li	a2,0
    80004854:	00a00593          	li	a1,10
    80004858:	00090513          	mv	a0,s2
    8000485c:	00000097          	auipc	ra,0x0
    80004860:	73c080e7          	jalr	1852(ra) # 80004f98 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004864:	00005517          	auipc	a0,0x5
    80004868:	81c50513          	addi	a0,a0,-2020 # 80009080 <CONSOLE_STATUS+0x70>
    8000486c:	00000097          	auipc	ra,0x0
    80004870:	57c080e7          	jalr	1404(ra) # 80004de8 <_Z11printStringPKc>
    80004874:	00000613          	li	a2,0
    80004878:	00a00593          	li	a1,10
    8000487c:	00048513          	mv	a0,s1
    80004880:	00000097          	auipc	ra,0x0
    80004884:	718080e7          	jalr	1816(ra) # 80004f98 <_Z8printIntiii>
    printString(".\n");
    80004888:	00005517          	auipc	a0,0x5
    8000488c:	81050513          	addi	a0,a0,-2032 # 80009098 <CONSOLE_STATUS+0x88>
    80004890:	00000097          	auipc	ra,0x0
    80004894:	558080e7          	jalr	1368(ra) # 80004de8 <_Z11printStringPKc>
    if(threadNum > n) {
    80004898:	0324c463          	blt	s1,s2,800048c0 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    8000489c:	03205c63          	blez	s2,800048d4 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800048a0:	03800513          	li	a0,56
    800048a4:	ffffd097          	auipc	ra,0xffffd
    800048a8:	534080e7          	jalr	1332(ra) # 80001dd8 <_Znwm>
    800048ac:	00050a93          	mv	s5,a0
    800048b0:	00048593          	mv	a1,s1
    800048b4:	00001097          	auipc	ra,0x1
    800048b8:	804080e7          	jalr	-2044(ra) # 800050b8 <_ZN9BufferCPPC1Ei>
    800048bc:	0300006f          	j	800048ec <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800048c0:	00004517          	auipc	a0,0x4
    800048c4:	7e050513          	addi	a0,a0,2016 # 800090a0 <CONSOLE_STATUS+0x90>
    800048c8:	00000097          	auipc	ra,0x0
    800048cc:	520080e7          	jalr	1312(ra) # 80004de8 <_Z11printStringPKc>
        return;
    800048d0:	0140006f          	j	800048e4 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800048d4:	00005517          	auipc	a0,0x5
    800048d8:	80c50513          	addi	a0,a0,-2036 # 800090e0 <CONSOLE_STATUS+0xd0>
    800048dc:	00000097          	auipc	ra,0x0
    800048e0:	50c080e7          	jalr	1292(ra) # 80004de8 <_Z11printStringPKc>
        return;
    800048e4:	000b8113          	mv	sp,s7
    800048e8:	2380006f          	j	80004b20 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    800048ec:	01000513          	li	a0,16
    800048f0:	ffffd097          	auipc	ra,0xffffd
    800048f4:	4e8080e7          	jalr	1256(ra) # 80001dd8 <_Znwm>
    800048f8:	00050493          	mv	s1,a0
    800048fc:	00000593          	li	a1,0
    80004900:	ffffd097          	auipc	ra,0xffffd
    80004904:	b38080e7          	jalr	-1224(ra) # 80001438 <_ZN9SemaphoreC1Ej>
    80004908:	00007797          	auipc	a5,0x7
    8000490c:	bc97bc23          	sd	s1,-1064(a5) # 8000b4e0 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004910:	00391793          	slli	a5,s2,0x3
    80004914:	00f78793          	addi	a5,a5,15
    80004918:	ff07f793          	andi	a5,a5,-16
    8000491c:	40f10133          	sub	sp,sp,a5
    80004920:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004924:	0019071b          	addiw	a4,s2,1
    80004928:	00171793          	slli	a5,a4,0x1
    8000492c:	00e787b3          	add	a5,a5,a4
    80004930:	00379793          	slli	a5,a5,0x3
    80004934:	00f78793          	addi	a5,a5,15
    80004938:	ff07f793          	andi	a5,a5,-16
    8000493c:	40f10133          	sub	sp,sp,a5
    80004940:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004944:	00191c13          	slli	s8,s2,0x1
    80004948:	012c07b3          	add	a5,s8,s2
    8000494c:	00379793          	slli	a5,a5,0x3
    80004950:	00fa07b3          	add	a5,s4,a5
    80004954:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004958:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    8000495c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004960:	02800513          	li	a0,40
    80004964:	ffffd097          	auipc	ra,0xffffd
    80004968:	474080e7          	jalr	1140(ra) # 80001dd8 <_Znwm>
    8000496c:	00050b13          	mv	s6,a0
    80004970:	012c0c33          	add	s8,s8,s2
    80004974:	003c1c13          	slli	s8,s8,0x3
    80004978:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000497c:	ffffd097          	auipc	ra,0xffffd
    80004980:	a28080e7          	jalr	-1496(ra) # 800013a4 <_ZN6ThreadC1Ev>
    80004984:	00007797          	auipc	a5,0x7
    80004988:	a3478793          	addi	a5,a5,-1484 # 8000b3b8 <_ZTV12ConsumerSync+0x10>
    8000498c:	00fb3023          	sd	a5,0(s6)
    80004990:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004994:	000b0513          	mv	a0,s6
    80004998:	ffffd097          	auipc	ra,0xffffd
    8000499c:	a44080e7          	jalr	-1468(ra) # 800013dc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800049a0:	00000493          	li	s1,0
    800049a4:	0380006f          	j	800049dc <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800049a8:	00007797          	auipc	a5,0x7
    800049ac:	9e878793          	addi	a5,a5,-1560 # 8000b390 <_ZTV12ProducerSync+0x10>
    800049b0:	00fcb023          	sd	a5,0(s9)
    800049b4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800049b8:	00349793          	slli	a5,s1,0x3
    800049bc:	00f987b3          	add	a5,s3,a5
    800049c0:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800049c4:	00349793          	slli	a5,s1,0x3
    800049c8:	00f987b3          	add	a5,s3,a5
    800049cc:	0007b503          	ld	a0,0(a5)
    800049d0:	ffffd097          	auipc	ra,0xffffd
    800049d4:	a0c080e7          	jalr	-1524(ra) # 800013dc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800049d8:	0014849b          	addiw	s1,s1,1
    800049dc:	0b24d063          	bge	s1,s2,80004a7c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    800049e0:	00149793          	slli	a5,s1,0x1
    800049e4:	009787b3          	add	a5,a5,s1
    800049e8:	00379793          	slli	a5,a5,0x3
    800049ec:	00fa07b3          	add	a5,s4,a5
    800049f0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800049f4:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800049f8:	00007717          	auipc	a4,0x7
    800049fc:	ae873703          	ld	a4,-1304(a4) # 8000b4e0 <_ZL10waitForAll>
    80004a00:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004a04:	02905863          	blez	s1,80004a34 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004a08:	02800513          	li	a0,40
    80004a0c:	ffffd097          	auipc	ra,0xffffd
    80004a10:	3cc080e7          	jalr	972(ra) # 80001dd8 <_Znwm>
    80004a14:	00050c93          	mv	s9,a0
    80004a18:	00149c13          	slli	s8,s1,0x1
    80004a1c:	009c0c33          	add	s8,s8,s1
    80004a20:	003c1c13          	slli	s8,s8,0x3
    80004a24:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004a28:	ffffd097          	auipc	ra,0xffffd
    80004a2c:	97c080e7          	jalr	-1668(ra) # 800013a4 <_ZN6ThreadC1Ev>
    80004a30:	f79ff06f          	j	800049a8 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004a34:	02800513          	li	a0,40
    80004a38:	ffffd097          	auipc	ra,0xffffd
    80004a3c:	3a0080e7          	jalr	928(ra) # 80001dd8 <_Znwm>
    80004a40:	00050c93          	mv	s9,a0
    80004a44:	00149c13          	slli	s8,s1,0x1
    80004a48:	009c0c33          	add	s8,s8,s1
    80004a4c:	003c1c13          	slli	s8,s8,0x3
    80004a50:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004a54:	ffffd097          	auipc	ra,0xffffd
    80004a58:	950080e7          	jalr	-1712(ra) # 800013a4 <_ZN6ThreadC1Ev>
    80004a5c:	00007797          	auipc	a5,0x7
    80004a60:	90c78793          	addi	a5,a5,-1780 # 8000b368 <_ZTV16ProducerKeyboard+0x10>
    80004a64:	00fcb023          	sd	a5,0(s9)
    80004a68:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004a6c:	00349793          	slli	a5,s1,0x3
    80004a70:	00f987b3          	add	a5,s3,a5
    80004a74:	0197b023          	sd	s9,0(a5)
    80004a78:	f4dff06f          	j	800049c4 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004a7c:	ffffd097          	auipc	ra,0xffffd
    80004a80:	994080e7          	jalr	-1644(ra) # 80001410 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004a84:	00000493          	li	s1,0
    80004a88:	00994e63          	blt	s2,s1,80004aa4 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004a8c:	00007517          	auipc	a0,0x7
    80004a90:	a5453503          	ld	a0,-1452(a0) # 8000b4e0 <_ZL10waitForAll>
    80004a94:	ffffd097          	auipc	ra,0xffffd
    80004a98:	9dc080e7          	jalr	-1572(ra) # 80001470 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004a9c:	0014849b          	addiw	s1,s1,1
    80004aa0:	fe9ff06f          	j	80004a88 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004aa4:	00000493          	li	s1,0
    80004aa8:	0080006f          	j	80004ab0 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004aac:	0014849b          	addiw	s1,s1,1
    80004ab0:	0324d263          	bge	s1,s2,80004ad4 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004ab4:	00349793          	slli	a5,s1,0x3
    80004ab8:	00f987b3          	add	a5,s3,a5
    80004abc:	0007b503          	ld	a0,0(a5)
    80004ac0:	fe0506e3          	beqz	a0,80004aac <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004ac4:	00053783          	ld	a5,0(a0)
    80004ac8:	0087b783          	ld	a5,8(a5)
    80004acc:	000780e7          	jalr	a5
    80004ad0:	fddff06f          	j	80004aac <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004ad4:	000b0a63          	beqz	s6,80004ae8 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004ad8:	000b3783          	ld	a5,0(s6)
    80004adc:	0087b783          	ld	a5,8(a5)
    80004ae0:	000b0513          	mv	a0,s6
    80004ae4:	000780e7          	jalr	a5
    delete waitForAll;
    80004ae8:	00007517          	auipc	a0,0x7
    80004aec:	9f853503          	ld	a0,-1544(a0) # 8000b4e0 <_ZL10waitForAll>
    80004af0:	00050863          	beqz	a0,80004b00 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004af4:	00053783          	ld	a5,0(a0)
    80004af8:	0087b783          	ld	a5,8(a5)
    80004afc:	000780e7          	jalr	a5
    delete buffer;
    80004b00:	000a8e63          	beqz	s5,80004b1c <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004b04:	000a8513          	mv	a0,s5
    80004b08:	00001097          	auipc	ra,0x1
    80004b0c:	8a8080e7          	jalr	-1880(ra) # 800053b0 <_ZN9BufferCPPD1Ev>
    80004b10:	000a8513          	mv	a0,s5
    80004b14:	ffffd097          	auipc	ra,0xffffd
    80004b18:	314080e7          	jalr	788(ra) # 80001e28 <_ZdlPv>
    80004b1c:	000b8113          	mv	sp,s7

}
    80004b20:	f8040113          	addi	sp,s0,-128
    80004b24:	07813083          	ld	ra,120(sp)
    80004b28:	07013403          	ld	s0,112(sp)
    80004b2c:	06813483          	ld	s1,104(sp)
    80004b30:	06013903          	ld	s2,96(sp)
    80004b34:	05813983          	ld	s3,88(sp)
    80004b38:	05013a03          	ld	s4,80(sp)
    80004b3c:	04813a83          	ld	s5,72(sp)
    80004b40:	04013b03          	ld	s6,64(sp)
    80004b44:	03813b83          	ld	s7,56(sp)
    80004b48:	03013c03          	ld	s8,48(sp)
    80004b4c:	02813c83          	ld	s9,40(sp)
    80004b50:	08010113          	addi	sp,sp,128
    80004b54:	00008067          	ret
    80004b58:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004b5c:	000a8513          	mv	a0,s5
    80004b60:	ffffd097          	auipc	ra,0xffffd
    80004b64:	2c8080e7          	jalr	712(ra) # 80001e28 <_ZdlPv>
    80004b68:	00048513          	mv	a0,s1
    80004b6c:	00008097          	auipc	ra,0x8
    80004b70:	a5c080e7          	jalr	-1444(ra) # 8000c5c8 <_Unwind_Resume>
    80004b74:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004b78:	00048513          	mv	a0,s1
    80004b7c:	ffffd097          	auipc	ra,0xffffd
    80004b80:	2ac080e7          	jalr	684(ra) # 80001e28 <_ZdlPv>
    80004b84:	00090513          	mv	a0,s2
    80004b88:	00008097          	auipc	ra,0x8
    80004b8c:	a40080e7          	jalr	-1472(ra) # 8000c5c8 <_Unwind_Resume>
    80004b90:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004b94:	000b0513          	mv	a0,s6
    80004b98:	ffffd097          	auipc	ra,0xffffd
    80004b9c:	290080e7          	jalr	656(ra) # 80001e28 <_ZdlPv>
    80004ba0:	00048513          	mv	a0,s1
    80004ba4:	00008097          	auipc	ra,0x8
    80004ba8:	a24080e7          	jalr	-1500(ra) # 8000c5c8 <_Unwind_Resume>
    80004bac:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004bb0:	000c8513          	mv	a0,s9
    80004bb4:	ffffd097          	auipc	ra,0xffffd
    80004bb8:	274080e7          	jalr	628(ra) # 80001e28 <_ZdlPv>
    80004bbc:	00048513          	mv	a0,s1
    80004bc0:	00008097          	auipc	ra,0x8
    80004bc4:	a08080e7          	jalr	-1528(ra) # 8000c5c8 <_Unwind_Resume>
    80004bc8:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004bcc:	000c8513          	mv	a0,s9
    80004bd0:	ffffd097          	auipc	ra,0xffffd
    80004bd4:	258080e7          	jalr	600(ra) # 80001e28 <_ZdlPv>
    80004bd8:	00048513          	mv	a0,s1
    80004bdc:	00008097          	auipc	ra,0x8
    80004be0:	9ec080e7          	jalr	-1556(ra) # 8000c5c8 <_Unwind_Resume>

0000000080004be4 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004be4:	ff010113          	addi	sp,sp,-16
    80004be8:	00113423          	sd	ra,8(sp)
    80004bec:	00813023          	sd	s0,0(sp)
    80004bf0:	01010413          	addi	s0,sp,16
    80004bf4:	00006797          	auipc	a5,0x6
    80004bf8:	7c478793          	addi	a5,a5,1988 # 8000b3b8 <_ZTV12ConsumerSync+0x10>
    80004bfc:	00f53023          	sd	a5,0(a0)
    80004c00:	ffffc097          	auipc	ra,0xffffc
    80004c04:	660080e7          	jalr	1632(ra) # 80001260 <_ZN6ThreadD1Ev>
    80004c08:	00813083          	ld	ra,8(sp)
    80004c0c:	00013403          	ld	s0,0(sp)
    80004c10:	01010113          	addi	sp,sp,16
    80004c14:	00008067          	ret

0000000080004c18 <_ZN12ConsumerSyncD0Ev>:
    80004c18:	fe010113          	addi	sp,sp,-32
    80004c1c:	00113c23          	sd	ra,24(sp)
    80004c20:	00813823          	sd	s0,16(sp)
    80004c24:	00913423          	sd	s1,8(sp)
    80004c28:	02010413          	addi	s0,sp,32
    80004c2c:	00050493          	mv	s1,a0
    80004c30:	00006797          	auipc	a5,0x6
    80004c34:	78878793          	addi	a5,a5,1928 # 8000b3b8 <_ZTV12ConsumerSync+0x10>
    80004c38:	00f53023          	sd	a5,0(a0)
    80004c3c:	ffffc097          	auipc	ra,0xffffc
    80004c40:	624080e7          	jalr	1572(ra) # 80001260 <_ZN6ThreadD1Ev>
    80004c44:	00048513          	mv	a0,s1
    80004c48:	ffffd097          	auipc	ra,0xffffd
    80004c4c:	1e0080e7          	jalr	480(ra) # 80001e28 <_ZdlPv>
    80004c50:	01813083          	ld	ra,24(sp)
    80004c54:	01013403          	ld	s0,16(sp)
    80004c58:	00813483          	ld	s1,8(sp)
    80004c5c:	02010113          	addi	sp,sp,32
    80004c60:	00008067          	ret

0000000080004c64 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004c64:	ff010113          	addi	sp,sp,-16
    80004c68:	00113423          	sd	ra,8(sp)
    80004c6c:	00813023          	sd	s0,0(sp)
    80004c70:	01010413          	addi	s0,sp,16
    80004c74:	00006797          	auipc	a5,0x6
    80004c78:	71c78793          	addi	a5,a5,1820 # 8000b390 <_ZTV12ProducerSync+0x10>
    80004c7c:	00f53023          	sd	a5,0(a0)
    80004c80:	ffffc097          	auipc	ra,0xffffc
    80004c84:	5e0080e7          	jalr	1504(ra) # 80001260 <_ZN6ThreadD1Ev>
    80004c88:	00813083          	ld	ra,8(sp)
    80004c8c:	00013403          	ld	s0,0(sp)
    80004c90:	01010113          	addi	sp,sp,16
    80004c94:	00008067          	ret

0000000080004c98 <_ZN12ProducerSyncD0Ev>:
    80004c98:	fe010113          	addi	sp,sp,-32
    80004c9c:	00113c23          	sd	ra,24(sp)
    80004ca0:	00813823          	sd	s0,16(sp)
    80004ca4:	00913423          	sd	s1,8(sp)
    80004ca8:	02010413          	addi	s0,sp,32
    80004cac:	00050493          	mv	s1,a0
    80004cb0:	00006797          	auipc	a5,0x6
    80004cb4:	6e078793          	addi	a5,a5,1760 # 8000b390 <_ZTV12ProducerSync+0x10>
    80004cb8:	00f53023          	sd	a5,0(a0)
    80004cbc:	ffffc097          	auipc	ra,0xffffc
    80004cc0:	5a4080e7          	jalr	1444(ra) # 80001260 <_ZN6ThreadD1Ev>
    80004cc4:	00048513          	mv	a0,s1
    80004cc8:	ffffd097          	auipc	ra,0xffffd
    80004ccc:	160080e7          	jalr	352(ra) # 80001e28 <_ZdlPv>
    80004cd0:	01813083          	ld	ra,24(sp)
    80004cd4:	01013403          	ld	s0,16(sp)
    80004cd8:	00813483          	ld	s1,8(sp)
    80004cdc:	02010113          	addi	sp,sp,32
    80004ce0:	00008067          	ret

0000000080004ce4 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004ce4:	ff010113          	addi	sp,sp,-16
    80004ce8:	00113423          	sd	ra,8(sp)
    80004cec:	00813023          	sd	s0,0(sp)
    80004cf0:	01010413          	addi	s0,sp,16
    80004cf4:	00006797          	auipc	a5,0x6
    80004cf8:	67478793          	addi	a5,a5,1652 # 8000b368 <_ZTV16ProducerKeyboard+0x10>
    80004cfc:	00f53023          	sd	a5,0(a0)
    80004d00:	ffffc097          	auipc	ra,0xffffc
    80004d04:	560080e7          	jalr	1376(ra) # 80001260 <_ZN6ThreadD1Ev>
    80004d08:	00813083          	ld	ra,8(sp)
    80004d0c:	00013403          	ld	s0,0(sp)
    80004d10:	01010113          	addi	sp,sp,16
    80004d14:	00008067          	ret

0000000080004d18 <_ZN16ProducerKeyboardD0Ev>:
    80004d18:	fe010113          	addi	sp,sp,-32
    80004d1c:	00113c23          	sd	ra,24(sp)
    80004d20:	00813823          	sd	s0,16(sp)
    80004d24:	00913423          	sd	s1,8(sp)
    80004d28:	02010413          	addi	s0,sp,32
    80004d2c:	00050493          	mv	s1,a0
    80004d30:	00006797          	auipc	a5,0x6
    80004d34:	63878793          	addi	a5,a5,1592 # 8000b368 <_ZTV16ProducerKeyboard+0x10>
    80004d38:	00f53023          	sd	a5,0(a0)
    80004d3c:	ffffc097          	auipc	ra,0xffffc
    80004d40:	524080e7          	jalr	1316(ra) # 80001260 <_ZN6ThreadD1Ev>
    80004d44:	00048513          	mv	a0,s1
    80004d48:	ffffd097          	auipc	ra,0xffffd
    80004d4c:	0e0080e7          	jalr	224(ra) # 80001e28 <_ZdlPv>
    80004d50:	01813083          	ld	ra,24(sp)
    80004d54:	01013403          	ld	s0,16(sp)
    80004d58:	00813483          	ld	s1,8(sp)
    80004d5c:	02010113          	addi	sp,sp,32
    80004d60:	00008067          	ret

0000000080004d64 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004d64:	ff010113          	addi	sp,sp,-16
    80004d68:	00113423          	sd	ra,8(sp)
    80004d6c:	00813023          	sd	s0,0(sp)
    80004d70:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004d74:	02053583          	ld	a1,32(a0)
    80004d78:	fffff097          	auipc	ra,0xfffff
    80004d7c:	7e4080e7          	jalr	2020(ra) # 8000455c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004d80:	00813083          	ld	ra,8(sp)
    80004d84:	00013403          	ld	s0,0(sp)
    80004d88:	01010113          	addi	sp,sp,16
    80004d8c:	00008067          	ret

0000000080004d90 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004d90:	ff010113          	addi	sp,sp,-16
    80004d94:	00113423          	sd	ra,8(sp)
    80004d98:	00813023          	sd	s0,0(sp)
    80004d9c:	01010413          	addi	s0,sp,16
        producer(td);
    80004da0:	02053583          	ld	a1,32(a0)
    80004da4:	00000097          	auipc	ra,0x0
    80004da8:	878080e7          	jalr	-1928(ra) # 8000461c <_ZN12ProducerSync8producerEPv>
    }
    80004dac:	00813083          	ld	ra,8(sp)
    80004db0:	00013403          	ld	s0,0(sp)
    80004db4:	01010113          	addi	sp,sp,16
    80004db8:	00008067          	ret

0000000080004dbc <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004dbc:	ff010113          	addi	sp,sp,-16
    80004dc0:	00113423          	sd	ra,8(sp)
    80004dc4:	00813023          	sd	s0,0(sp)
    80004dc8:	01010413          	addi	s0,sp,16
        consumer(td);
    80004dcc:	02053583          	ld	a1,32(a0)
    80004dd0:	00000097          	auipc	ra,0x0
    80004dd4:	8e0080e7          	jalr	-1824(ra) # 800046b0 <_ZN12ConsumerSync8consumerEPv>
    }
    80004dd8:	00813083          	ld	ra,8(sp)
    80004ddc:	00013403          	ld	s0,0(sp)
    80004de0:	01010113          	addi	sp,sp,16
    80004de4:	00008067          	ret

0000000080004de8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004de8:	fe010113          	addi	sp,sp,-32
    80004dec:	00113c23          	sd	ra,24(sp)
    80004df0:	00813823          	sd	s0,16(sp)
    80004df4:	00913423          	sd	s1,8(sp)
    80004df8:	02010413          	addi	s0,sp,32
    80004dfc:	00050493          	mv	s1,a0
    LOCK();
    80004e00:	00100613          	li	a2,1
    80004e04:	00000593          	li	a1,0
    80004e08:	00006517          	auipc	a0,0x6
    80004e0c:	6e050513          	addi	a0,a0,1760 # 8000b4e8 <lockPrint>
    80004e10:	ffffc097          	auipc	ra,0xffffc
    80004e14:	404080e7          	jalr	1028(ra) # 80001214 <copy_and_swap>
    80004e18:	00050863          	beqz	a0,80004e28 <_Z11printStringPKc+0x40>
    80004e1c:	ffffd097          	auipc	ra,0xffffd
    80004e20:	8f0080e7          	jalr	-1808(ra) # 8000170c <_Z15thread_dispatchv>
    80004e24:	fddff06f          	j	80004e00 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004e28:	0004c503          	lbu	a0,0(s1)
    80004e2c:	00050a63          	beqz	a0,80004e40 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004e30:	ffffd097          	auipc	ra,0xffffd
    80004e34:	ab4080e7          	jalr	-1356(ra) # 800018e4 <_Z4putcc>
        string++;
    80004e38:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004e3c:	fedff06f          	j	80004e28 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004e40:	00000613          	li	a2,0
    80004e44:	00100593          	li	a1,1
    80004e48:	00006517          	auipc	a0,0x6
    80004e4c:	6a050513          	addi	a0,a0,1696 # 8000b4e8 <lockPrint>
    80004e50:	ffffc097          	auipc	ra,0xffffc
    80004e54:	3c4080e7          	jalr	964(ra) # 80001214 <copy_and_swap>
    80004e58:	fe0514e3          	bnez	a0,80004e40 <_Z11printStringPKc+0x58>
}
    80004e5c:	01813083          	ld	ra,24(sp)
    80004e60:	01013403          	ld	s0,16(sp)
    80004e64:	00813483          	ld	s1,8(sp)
    80004e68:	02010113          	addi	sp,sp,32
    80004e6c:	00008067          	ret

0000000080004e70 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004e70:	fd010113          	addi	sp,sp,-48
    80004e74:	02113423          	sd	ra,40(sp)
    80004e78:	02813023          	sd	s0,32(sp)
    80004e7c:	00913c23          	sd	s1,24(sp)
    80004e80:	01213823          	sd	s2,16(sp)
    80004e84:	01313423          	sd	s3,8(sp)
    80004e88:	01413023          	sd	s4,0(sp)
    80004e8c:	03010413          	addi	s0,sp,48
    80004e90:	00050993          	mv	s3,a0
    80004e94:	00058a13          	mv	s4,a1
    LOCK();
    80004e98:	00100613          	li	a2,1
    80004e9c:	00000593          	li	a1,0
    80004ea0:	00006517          	auipc	a0,0x6
    80004ea4:	64850513          	addi	a0,a0,1608 # 8000b4e8 <lockPrint>
    80004ea8:	ffffc097          	auipc	ra,0xffffc
    80004eac:	36c080e7          	jalr	876(ra) # 80001214 <copy_and_swap>
    80004eb0:	00050863          	beqz	a0,80004ec0 <_Z9getStringPci+0x50>
    80004eb4:	ffffd097          	auipc	ra,0xffffd
    80004eb8:	858080e7          	jalr	-1960(ra) # 8000170c <_Z15thread_dispatchv>
    80004ebc:	fddff06f          	j	80004e98 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004ec0:	00000913          	li	s2,0
    80004ec4:	00090493          	mv	s1,s2
    80004ec8:	0019091b          	addiw	s2,s2,1
    80004ecc:	03495a63          	bge	s2,s4,80004f00 <_Z9getStringPci+0x90>
        cc = getc();
    80004ed0:	ffffd097          	auipc	ra,0xffffd
    80004ed4:	9d0080e7          	jalr	-1584(ra) # 800018a0 <_Z4getcv>
        if(cc < 1)
    80004ed8:	02050463          	beqz	a0,80004f00 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004edc:	009984b3          	add	s1,s3,s1
    80004ee0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004ee4:	00a00793          	li	a5,10
    80004ee8:	00f50a63          	beq	a0,a5,80004efc <_Z9getStringPci+0x8c>
    80004eec:	00d00793          	li	a5,13
    80004ef0:	fcf51ae3          	bne	a0,a5,80004ec4 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004ef4:	00090493          	mv	s1,s2
    80004ef8:	0080006f          	j	80004f00 <_Z9getStringPci+0x90>
    80004efc:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004f00:	009984b3          	add	s1,s3,s1
    80004f04:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004f08:	00000613          	li	a2,0
    80004f0c:	00100593          	li	a1,1
    80004f10:	00006517          	auipc	a0,0x6
    80004f14:	5d850513          	addi	a0,a0,1496 # 8000b4e8 <lockPrint>
    80004f18:	ffffc097          	auipc	ra,0xffffc
    80004f1c:	2fc080e7          	jalr	764(ra) # 80001214 <copy_and_swap>
    80004f20:	fe0514e3          	bnez	a0,80004f08 <_Z9getStringPci+0x98>
    return buf;
}
    80004f24:	00098513          	mv	a0,s3
    80004f28:	02813083          	ld	ra,40(sp)
    80004f2c:	02013403          	ld	s0,32(sp)
    80004f30:	01813483          	ld	s1,24(sp)
    80004f34:	01013903          	ld	s2,16(sp)
    80004f38:	00813983          	ld	s3,8(sp)
    80004f3c:	00013a03          	ld	s4,0(sp)
    80004f40:	03010113          	addi	sp,sp,48
    80004f44:	00008067          	ret

0000000080004f48 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004f48:	ff010113          	addi	sp,sp,-16
    80004f4c:	00813423          	sd	s0,8(sp)
    80004f50:	01010413          	addi	s0,sp,16
    80004f54:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004f58:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004f5c:	0006c603          	lbu	a2,0(a3)
    80004f60:	fd06071b          	addiw	a4,a2,-48
    80004f64:	0ff77713          	andi	a4,a4,255
    80004f68:	00900793          	li	a5,9
    80004f6c:	02e7e063          	bltu	a5,a4,80004f8c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004f70:	0025179b          	slliw	a5,a0,0x2
    80004f74:	00a787bb          	addw	a5,a5,a0
    80004f78:	0017979b          	slliw	a5,a5,0x1
    80004f7c:	00168693          	addi	a3,a3,1
    80004f80:	00c787bb          	addw	a5,a5,a2
    80004f84:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004f88:	fd5ff06f          	j	80004f5c <_Z11stringToIntPKc+0x14>
    return n;
}
    80004f8c:	00813403          	ld	s0,8(sp)
    80004f90:	01010113          	addi	sp,sp,16
    80004f94:	00008067          	ret

0000000080004f98 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004f98:	fc010113          	addi	sp,sp,-64
    80004f9c:	02113c23          	sd	ra,56(sp)
    80004fa0:	02813823          	sd	s0,48(sp)
    80004fa4:	02913423          	sd	s1,40(sp)
    80004fa8:	03213023          	sd	s2,32(sp)
    80004fac:	01313c23          	sd	s3,24(sp)
    80004fb0:	04010413          	addi	s0,sp,64
    80004fb4:	00050493          	mv	s1,a0
    80004fb8:	00058913          	mv	s2,a1
    80004fbc:	00060993          	mv	s3,a2
    LOCK();
    80004fc0:	00100613          	li	a2,1
    80004fc4:	00000593          	li	a1,0
    80004fc8:	00006517          	auipc	a0,0x6
    80004fcc:	52050513          	addi	a0,a0,1312 # 8000b4e8 <lockPrint>
    80004fd0:	ffffc097          	auipc	ra,0xffffc
    80004fd4:	244080e7          	jalr	580(ra) # 80001214 <copy_and_swap>
    80004fd8:	00050863          	beqz	a0,80004fe8 <_Z8printIntiii+0x50>
    80004fdc:	ffffc097          	auipc	ra,0xffffc
    80004fe0:	730080e7          	jalr	1840(ra) # 8000170c <_Z15thread_dispatchv>
    80004fe4:	fddff06f          	j	80004fc0 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004fe8:	00098463          	beqz	s3,80004ff0 <_Z8printIntiii+0x58>
    80004fec:	0804c463          	bltz	s1,80005074 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004ff0:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004ff4:	00000593          	li	a1,0
    }

    i = 0;
    80004ff8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004ffc:	0009079b          	sext.w	a5,s2
    80005000:	0325773b          	remuw	a4,a0,s2
    80005004:	00048613          	mv	a2,s1
    80005008:	0014849b          	addiw	s1,s1,1
    8000500c:	02071693          	slli	a3,a4,0x20
    80005010:	0206d693          	srli	a3,a3,0x20
    80005014:	00006717          	auipc	a4,0x6
    80005018:	3bc70713          	addi	a4,a4,956 # 8000b3d0 <digits>
    8000501c:	00d70733          	add	a4,a4,a3
    80005020:	00074683          	lbu	a3,0(a4)
    80005024:	fd040713          	addi	a4,s0,-48
    80005028:	00c70733          	add	a4,a4,a2
    8000502c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80005030:	0005071b          	sext.w	a4,a0
    80005034:	0325553b          	divuw	a0,a0,s2
    80005038:	fcf772e3          	bgeu	a4,a5,80004ffc <_Z8printIntiii+0x64>
    if(neg)
    8000503c:	00058c63          	beqz	a1,80005054 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80005040:	fd040793          	addi	a5,s0,-48
    80005044:	009784b3          	add	s1,a5,s1
    80005048:	02d00793          	li	a5,45
    8000504c:	fef48823          	sb	a5,-16(s1)
    80005050:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005054:	fff4849b          	addiw	s1,s1,-1
    80005058:	0204c463          	bltz	s1,80005080 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    8000505c:	fd040793          	addi	a5,s0,-48
    80005060:	009787b3          	add	a5,a5,s1
    80005064:	ff07c503          	lbu	a0,-16(a5)
    80005068:	ffffd097          	auipc	ra,0xffffd
    8000506c:	87c080e7          	jalr	-1924(ra) # 800018e4 <_Z4putcc>
    80005070:	fe5ff06f          	j	80005054 <_Z8printIntiii+0xbc>
        x = -xx;
    80005074:	4090053b          	negw	a0,s1
        neg = 1;
    80005078:	00100593          	li	a1,1
        x = -xx;
    8000507c:	f7dff06f          	j	80004ff8 <_Z8printIntiii+0x60>

    UNLOCK();
    80005080:	00000613          	li	a2,0
    80005084:	00100593          	li	a1,1
    80005088:	00006517          	auipc	a0,0x6
    8000508c:	46050513          	addi	a0,a0,1120 # 8000b4e8 <lockPrint>
    80005090:	ffffc097          	auipc	ra,0xffffc
    80005094:	184080e7          	jalr	388(ra) # 80001214 <copy_and_swap>
    80005098:	fe0514e3          	bnez	a0,80005080 <_Z8printIntiii+0xe8>
    8000509c:	03813083          	ld	ra,56(sp)
    800050a0:	03013403          	ld	s0,48(sp)
    800050a4:	02813483          	ld	s1,40(sp)
    800050a8:	02013903          	ld	s2,32(sp)
    800050ac:	01813983          	ld	s3,24(sp)
    800050b0:	04010113          	addi	sp,sp,64
    800050b4:	00008067          	ret

00000000800050b8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800050b8:	fd010113          	addi	sp,sp,-48
    800050bc:	02113423          	sd	ra,40(sp)
    800050c0:	02813023          	sd	s0,32(sp)
    800050c4:	00913c23          	sd	s1,24(sp)
    800050c8:	01213823          	sd	s2,16(sp)
    800050cc:	01313423          	sd	s3,8(sp)
    800050d0:	03010413          	addi	s0,sp,48
    800050d4:	00050493          	mv	s1,a0
    800050d8:	00058913          	mv	s2,a1
    800050dc:	0015879b          	addiw	a5,a1,1
    800050e0:	0007851b          	sext.w	a0,a5
    800050e4:	00f4a023          	sw	a5,0(s1)
    800050e8:	0004a823          	sw	zero,16(s1)
    800050ec:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800050f0:	00251513          	slli	a0,a0,0x2
    800050f4:	ffffc097          	auipc	ra,0xffffc
    800050f8:	49c080e7          	jalr	1180(ra) # 80001590 <_Z9mem_allocm>
    800050fc:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005100:	01000513          	li	a0,16
    80005104:	ffffd097          	auipc	ra,0xffffd
    80005108:	cd4080e7          	jalr	-812(ra) # 80001dd8 <_Znwm>
    8000510c:	00050993          	mv	s3,a0
    80005110:	00000593          	li	a1,0
    80005114:	ffffc097          	auipc	ra,0xffffc
    80005118:	324080e7          	jalr	804(ra) # 80001438 <_ZN9SemaphoreC1Ej>
    8000511c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005120:	01000513          	li	a0,16
    80005124:	ffffd097          	auipc	ra,0xffffd
    80005128:	cb4080e7          	jalr	-844(ra) # 80001dd8 <_Znwm>
    8000512c:	00050993          	mv	s3,a0
    80005130:	00090593          	mv	a1,s2
    80005134:	ffffc097          	auipc	ra,0xffffc
    80005138:	304080e7          	jalr	772(ra) # 80001438 <_ZN9SemaphoreC1Ej>
    8000513c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005140:	01000513          	li	a0,16
    80005144:	ffffd097          	auipc	ra,0xffffd
    80005148:	c94080e7          	jalr	-876(ra) # 80001dd8 <_Znwm>
    8000514c:	00050913          	mv	s2,a0
    80005150:	00100593          	li	a1,1
    80005154:	ffffc097          	auipc	ra,0xffffc
    80005158:	2e4080e7          	jalr	740(ra) # 80001438 <_ZN9SemaphoreC1Ej>
    8000515c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005160:	01000513          	li	a0,16
    80005164:	ffffd097          	auipc	ra,0xffffd
    80005168:	c74080e7          	jalr	-908(ra) # 80001dd8 <_Znwm>
    8000516c:	00050913          	mv	s2,a0
    80005170:	00100593          	li	a1,1
    80005174:	ffffc097          	auipc	ra,0xffffc
    80005178:	2c4080e7          	jalr	708(ra) # 80001438 <_ZN9SemaphoreC1Ej>
    8000517c:	0324b823          	sd	s2,48(s1)
}
    80005180:	02813083          	ld	ra,40(sp)
    80005184:	02013403          	ld	s0,32(sp)
    80005188:	01813483          	ld	s1,24(sp)
    8000518c:	01013903          	ld	s2,16(sp)
    80005190:	00813983          	ld	s3,8(sp)
    80005194:	03010113          	addi	sp,sp,48
    80005198:	00008067          	ret
    8000519c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800051a0:	00098513          	mv	a0,s3
    800051a4:	ffffd097          	auipc	ra,0xffffd
    800051a8:	c84080e7          	jalr	-892(ra) # 80001e28 <_ZdlPv>
    800051ac:	00048513          	mv	a0,s1
    800051b0:	00007097          	auipc	ra,0x7
    800051b4:	418080e7          	jalr	1048(ra) # 8000c5c8 <_Unwind_Resume>
    800051b8:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800051bc:	00098513          	mv	a0,s3
    800051c0:	ffffd097          	auipc	ra,0xffffd
    800051c4:	c68080e7          	jalr	-920(ra) # 80001e28 <_ZdlPv>
    800051c8:	00048513          	mv	a0,s1
    800051cc:	00007097          	auipc	ra,0x7
    800051d0:	3fc080e7          	jalr	1020(ra) # 8000c5c8 <_Unwind_Resume>
    800051d4:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800051d8:	00090513          	mv	a0,s2
    800051dc:	ffffd097          	auipc	ra,0xffffd
    800051e0:	c4c080e7          	jalr	-948(ra) # 80001e28 <_ZdlPv>
    800051e4:	00048513          	mv	a0,s1
    800051e8:	00007097          	auipc	ra,0x7
    800051ec:	3e0080e7          	jalr	992(ra) # 8000c5c8 <_Unwind_Resume>
    800051f0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800051f4:	00090513          	mv	a0,s2
    800051f8:	ffffd097          	auipc	ra,0xffffd
    800051fc:	c30080e7          	jalr	-976(ra) # 80001e28 <_ZdlPv>
    80005200:	00048513          	mv	a0,s1
    80005204:	00007097          	auipc	ra,0x7
    80005208:	3c4080e7          	jalr	964(ra) # 8000c5c8 <_Unwind_Resume>

000000008000520c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000520c:	fe010113          	addi	sp,sp,-32
    80005210:	00113c23          	sd	ra,24(sp)
    80005214:	00813823          	sd	s0,16(sp)
    80005218:	00913423          	sd	s1,8(sp)
    8000521c:	01213023          	sd	s2,0(sp)
    80005220:	02010413          	addi	s0,sp,32
    80005224:	00050493          	mv	s1,a0
    80005228:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000522c:	01853503          	ld	a0,24(a0)
    80005230:	ffffc097          	auipc	ra,0xffffc
    80005234:	240080e7          	jalr	576(ra) # 80001470 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005238:	0304b503          	ld	a0,48(s1)
    8000523c:	ffffc097          	auipc	ra,0xffffc
    80005240:	234080e7          	jalr	564(ra) # 80001470 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005244:	0084b783          	ld	a5,8(s1)
    80005248:	0144a703          	lw	a4,20(s1)
    8000524c:	00271713          	slli	a4,a4,0x2
    80005250:	00e787b3          	add	a5,a5,a4
    80005254:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005258:	0144a783          	lw	a5,20(s1)
    8000525c:	0017879b          	addiw	a5,a5,1
    80005260:	0004a703          	lw	a4,0(s1)
    80005264:	02e7e7bb          	remw	a5,a5,a4
    80005268:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000526c:	0304b503          	ld	a0,48(s1)
    80005270:	ffffc097          	auipc	ra,0xffffc
    80005274:	238080e7          	jalr	568(ra) # 800014a8 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005278:	0204b503          	ld	a0,32(s1)
    8000527c:	ffffc097          	auipc	ra,0xffffc
    80005280:	22c080e7          	jalr	556(ra) # 800014a8 <_ZN9Semaphore6signalEv>

}
    80005284:	01813083          	ld	ra,24(sp)
    80005288:	01013403          	ld	s0,16(sp)
    8000528c:	00813483          	ld	s1,8(sp)
    80005290:	00013903          	ld	s2,0(sp)
    80005294:	02010113          	addi	sp,sp,32
    80005298:	00008067          	ret

000000008000529c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000529c:	fe010113          	addi	sp,sp,-32
    800052a0:	00113c23          	sd	ra,24(sp)
    800052a4:	00813823          	sd	s0,16(sp)
    800052a8:	00913423          	sd	s1,8(sp)
    800052ac:	01213023          	sd	s2,0(sp)
    800052b0:	02010413          	addi	s0,sp,32
    800052b4:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800052b8:	02053503          	ld	a0,32(a0)
    800052bc:	ffffc097          	auipc	ra,0xffffc
    800052c0:	1b4080e7          	jalr	436(ra) # 80001470 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800052c4:	0284b503          	ld	a0,40(s1)
    800052c8:	ffffc097          	auipc	ra,0xffffc
    800052cc:	1a8080e7          	jalr	424(ra) # 80001470 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800052d0:	0084b703          	ld	a4,8(s1)
    800052d4:	0104a783          	lw	a5,16(s1)
    800052d8:	00279693          	slli	a3,a5,0x2
    800052dc:	00d70733          	add	a4,a4,a3
    800052e0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800052e4:	0017879b          	addiw	a5,a5,1
    800052e8:	0004a703          	lw	a4,0(s1)
    800052ec:	02e7e7bb          	remw	a5,a5,a4
    800052f0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800052f4:	0284b503          	ld	a0,40(s1)
    800052f8:	ffffc097          	auipc	ra,0xffffc
    800052fc:	1b0080e7          	jalr	432(ra) # 800014a8 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005300:	0184b503          	ld	a0,24(s1)
    80005304:	ffffc097          	auipc	ra,0xffffc
    80005308:	1a4080e7          	jalr	420(ra) # 800014a8 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000530c:	00090513          	mv	a0,s2
    80005310:	01813083          	ld	ra,24(sp)
    80005314:	01013403          	ld	s0,16(sp)
    80005318:	00813483          	ld	s1,8(sp)
    8000531c:	00013903          	ld	s2,0(sp)
    80005320:	02010113          	addi	sp,sp,32
    80005324:	00008067          	ret

0000000080005328 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005328:	fe010113          	addi	sp,sp,-32
    8000532c:	00113c23          	sd	ra,24(sp)
    80005330:	00813823          	sd	s0,16(sp)
    80005334:	00913423          	sd	s1,8(sp)
    80005338:	01213023          	sd	s2,0(sp)
    8000533c:	02010413          	addi	s0,sp,32
    80005340:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005344:	02853503          	ld	a0,40(a0)
    80005348:	ffffc097          	auipc	ra,0xffffc
    8000534c:	128080e7          	jalr	296(ra) # 80001470 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005350:	0304b503          	ld	a0,48(s1)
    80005354:	ffffc097          	auipc	ra,0xffffc
    80005358:	11c080e7          	jalr	284(ra) # 80001470 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000535c:	0144a783          	lw	a5,20(s1)
    80005360:	0104a903          	lw	s2,16(s1)
    80005364:	0327ce63          	blt	a5,s2,800053a0 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005368:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000536c:	0304b503          	ld	a0,48(s1)
    80005370:	ffffc097          	auipc	ra,0xffffc
    80005374:	138080e7          	jalr	312(ra) # 800014a8 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005378:	0284b503          	ld	a0,40(s1)
    8000537c:	ffffc097          	auipc	ra,0xffffc
    80005380:	12c080e7          	jalr	300(ra) # 800014a8 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005384:	00090513          	mv	a0,s2
    80005388:	01813083          	ld	ra,24(sp)
    8000538c:	01013403          	ld	s0,16(sp)
    80005390:	00813483          	ld	s1,8(sp)
    80005394:	00013903          	ld	s2,0(sp)
    80005398:	02010113          	addi	sp,sp,32
    8000539c:	00008067          	ret
        ret = cap - head + tail;
    800053a0:	0004a703          	lw	a4,0(s1)
    800053a4:	4127093b          	subw	s2,a4,s2
    800053a8:	00f9093b          	addw	s2,s2,a5
    800053ac:	fc1ff06f          	j	8000536c <_ZN9BufferCPP6getCntEv+0x44>

00000000800053b0 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800053b0:	fe010113          	addi	sp,sp,-32
    800053b4:	00113c23          	sd	ra,24(sp)
    800053b8:	00813823          	sd	s0,16(sp)
    800053bc:	00913423          	sd	s1,8(sp)
    800053c0:	02010413          	addi	s0,sp,32
    800053c4:	00050493          	mv	s1,a0
    Console::putc('\n');
    800053c8:	00a00513          	li	a0,10
    800053cc:	ffffc097          	auipc	ra,0xffffc
    800053d0:	168080e7          	jalr	360(ra) # 80001534 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800053d4:	00004517          	auipc	a0,0x4
    800053d8:	e3450513          	addi	a0,a0,-460 # 80009208 <CONSOLE_STATUS+0x1f8>
    800053dc:	00000097          	auipc	ra,0x0
    800053e0:	a0c080e7          	jalr	-1524(ra) # 80004de8 <_Z11printStringPKc>
    while (getCnt()) {
    800053e4:	00048513          	mv	a0,s1
    800053e8:	00000097          	auipc	ra,0x0
    800053ec:	f40080e7          	jalr	-192(ra) # 80005328 <_ZN9BufferCPP6getCntEv>
    800053f0:	02050c63          	beqz	a0,80005428 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800053f4:	0084b783          	ld	a5,8(s1)
    800053f8:	0104a703          	lw	a4,16(s1)
    800053fc:	00271713          	slli	a4,a4,0x2
    80005400:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005404:	0007c503          	lbu	a0,0(a5)
    80005408:	ffffc097          	auipc	ra,0xffffc
    8000540c:	12c080e7          	jalr	300(ra) # 80001534 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005410:	0104a783          	lw	a5,16(s1)
    80005414:	0017879b          	addiw	a5,a5,1
    80005418:	0004a703          	lw	a4,0(s1)
    8000541c:	02e7e7bb          	remw	a5,a5,a4
    80005420:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005424:	fc1ff06f          	j	800053e4 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005428:	02100513          	li	a0,33
    8000542c:	ffffc097          	auipc	ra,0xffffc
    80005430:	108080e7          	jalr	264(ra) # 80001534 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005434:	00a00513          	li	a0,10
    80005438:	ffffc097          	auipc	ra,0xffffc
    8000543c:	0fc080e7          	jalr	252(ra) # 80001534 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005440:	0084b503          	ld	a0,8(s1)
    80005444:	ffffc097          	auipc	ra,0xffffc
    80005448:	1ac080e7          	jalr	428(ra) # 800015f0 <_Z8mem_freePv>
    delete itemAvailable;
    8000544c:	0204b503          	ld	a0,32(s1)
    80005450:	00050863          	beqz	a0,80005460 <_ZN9BufferCPPD1Ev+0xb0>
    80005454:	00053783          	ld	a5,0(a0)
    80005458:	0087b783          	ld	a5,8(a5)
    8000545c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005460:	0184b503          	ld	a0,24(s1)
    80005464:	00050863          	beqz	a0,80005474 <_ZN9BufferCPPD1Ev+0xc4>
    80005468:	00053783          	ld	a5,0(a0)
    8000546c:	0087b783          	ld	a5,8(a5)
    80005470:	000780e7          	jalr	a5
    delete mutexTail;
    80005474:	0304b503          	ld	a0,48(s1)
    80005478:	00050863          	beqz	a0,80005488 <_ZN9BufferCPPD1Ev+0xd8>
    8000547c:	00053783          	ld	a5,0(a0)
    80005480:	0087b783          	ld	a5,8(a5)
    80005484:	000780e7          	jalr	a5
    delete mutexHead;
    80005488:	0284b503          	ld	a0,40(s1)
    8000548c:	00050863          	beqz	a0,8000549c <_ZN9BufferCPPD1Ev+0xec>
    80005490:	00053783          	ld	a5,0(a0)
    80005494:	0087b783          	ld	a5,8(a5)
    80005498:	000780e7          	jalr	a5
}
    8000549c:	01813083          	ld	ra,24(sp)
    800054a0:	01013403          	ld	s0,16(sp)
    800054a4:	00813483          	ld	s1,8(sp)
    800054a8:	02010113          	addi	sp,sp,32
    800054ac:	00008067          	ret

00000000800054b0 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800054b0:	fe010113          	addi	sp,sp,-32
    800054b4:	00113c23          	sd	ra,24(sp)
    800054b8:	00813823          	sd	s0,16(sp)
    800054bc:	00913423          	sd	s1,8(sp)
    800054c0:	01213023          	sd	s2,0(sp)
    800054c4:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800054c8:	00004517          	auipc	a0,0x4
    800054cc:	d5850513          	addi	a0,a0,-680 # 80009220 <CONSOLE_STATUS+0x210>
    800054d0:	00000097          	auipc	ra,0x0
    800054d4:	918080e7          	jalr	-1768(ra) # 80004de8 <_Z11printStringPKc>
    int test = getc() - '0';
    800054d8:	ffffc097          	auipc	ra,0xffffc
    800054dc:	3c8080e7          	jalr	968(ra) # 800018a0 <_Z4getcv>
    800054e0:	00050913          	mv	s2,a0
    800054e4:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800054e8:	ffffc097          	auipc	ra,0xffffc
    800054ec:	3b8080e7          	jalr	952(ra) # 800018a0 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800054f0:	fcb9091b          	addiw	s2,s2,-53
    800054f4:	00100793          	li	a5,1
    800054f8:	0327f463          	bgeu	a5,s2,80005520 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800054fc:	00700793          	li	a5,7
    80005500:	0e97e263          	bltu	a5,s1,800055e4 <_Z8userMainv+0x134>
    80005504:	00249493          	slli	s1,s1,0x2
    80005508:	00004717          	auipc	a4,0x4
    8000550c:	f3070713          	addi	a4,a4,-208 # 80009438 <CONSOLE_STATUS+0x428>
    80005510:	00e484b3          	add	s1,s1,a4
    80005514:	0004a783          	lw	a5,0(s1)
    80005518:	00e787b3          	add	a5,a5,a4
    8000551c:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80005520:	00004517          	auipc	a0,0x4
    80005524:	d2050513          	addi	a0,a0,-736 # 80009240 <CONSOLE_STATUS+0x230>
    80005528:	00000097          	auipc	ra,0x0
    8000552c:	8c0080e7          	jalr	-1856(ra) # 80004de8 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005530:	01813083          	ld	ra,24(sp)
    80005534:	01013403          	ld	s0,16(sp)
    80005538:	00813483          	ld	s1,8(sp)
    8000553c:	00013903          	ld	s2,0(sp)
    80005540:	02010113          	addi	sp,sp,32
    80005544:	00008067          	ret
            Threads_C_API_test();
    80005548:	fffff097          	auipc	ra,0xfffff
    8000554c:	f18080e7          	jalr	-232(ra) # 80004460 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005550:	00004517          	auipc	a0,0x4
    80005554:	d2050513          	addi	a0,a0,-736 # 80009270 <CONSOLE_STATUS+0x260>
    80005558:	00000097          	auipc	ra,0x0
    8000555c:	890080e7          	jalr	-1904(ra) # 80004de8 <_Z11printStringPKc>
            break;
    80005560:	fd1ff06f          	j	80005530 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80005564:	ffffe097          	auipc	ra,0xffffe
    80005568:	e0c080e7          	jalr	-500(ra) # 80003370 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    8000556c:	00004517          	auipc	a0,0x4
    80005570:	d4450513          	addi	a0,a0,-700 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80005574:	00000097          	auipc	ra,0x0
    80005578:	874080e7          	jalr	-1932(ra) # 80004de8 <_Z11printStringPKc>
            break;
    8000557c:	fb5ff06f          	j	80005530 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80005580:	ffffd097          	auipc	ra,0xffffd
    80005584:	644080e7          	jalr	1604(ra) # 80002bc4 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005588:	00004517          	auipc	a0,0x4
    8000558c:	d6850513          	addi	a0,a0,-664 # 800092f0 <CONSOLE_STATUS+0x2e0>
    80005590:	00000097          	auipc	ra,0x0
    80005594:	858080e7          	jalr	-1960(ra) # 80004de8 <_Z11printStringPKc>
            break;
    80005598:	f99ff06f          	j	80005530 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    8000559c:	fffff097          	auipc	ra,0xfffff
    800055a0:	208080e7          	jalr	520(ra) # 800047a4 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800055a4:	00004517          	auipc	a0,0x4
    800055a8:	d9c50513          	addi	a0,a0,-612 # 80009340 <CONSOLE_STATUS+0x330>
    800055ac:	00000097          	auipc	ra,0x0
    800055b0:	83c080e7          	jalr	-1988(ra) # 80004de8 <_Z11printStringPKc>
            break;
    800055b4:	f7dff06f          	j	80005530 <_Z8userMainv+0x80>
            System_Mode_test();
    800055b8:	00000097          	auipc	ra,0x0
    800055bc:	52c080e7          	jalr	1324(ra) # 80005ae4 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800055c0:	00004517          	auipc	a0,0x4
    800055c4:	dd850513          	addi	a0,a0,-552 # 80009398 <CONSOLE_STATUS+0x388>
    800055c8:	00000097          	auipc	ra,0x0
    800055cc:	820080e7          	jalr	-2016(ra) # 80004de8 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800055d0:	00004517          	auipc	a0,0x4
    800055d4:	de850513          	addi	a0,a0,-536 # 800093b8 <CONSOLE_STATUS+0x3a8>
    800055d8:	00000097          	auipc	ra,0x0
    800055dc:	810080e7          	jalr	-2032(ra) # 80004de8 <_Z11printStringPKc>
            break;
    800055e0:	f51ff06f          	j	80005530 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800055e4:	00004517          	auipc	a0,0x4
    800055e8:	e2c50513          	addi	a0,a0,-468 # 80009410 <CONSOLE_STATUS+0x400>
    800055ec:	fffff097          	auipc	ra,0xfffff
    800055f0:	7fc080e7          	jalr	2044(ra) # 80004de8 <_Z11printStringPKc>
    800055f4:	f3dff06f          	j	80005530 <_Z8userMainv+0x80>

00000000800055f8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800055f8:	fe010113          	addi	sp,sp,-32
    800055fc:	00113c23          	sd	ra,24(sp)
    80005600:	00813823          	sd	s0,16(sp)
    80005604:	00913423          	sd	s1,8(sp)
    80005608:	01213023          	sd	s2,0(sp)
    8000560c:	02010413          	addi	s0,sp,32
    80005610:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005614:	00100793          	li	a5,1
    80005618:	02a7f863          	bgeu	a5,a0,80005648 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000561c:	00a00793          	li	a5,10
    80005620:	02f577b3          	remu	a5,a0,a5
    80005624:	02078e63          	beqz	a5,80005660 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005628:	fff48513          	addi	a0,s1,-1
    8000562c:	00000097          	auipc	ra,0x0
    80005630:	fcc080e7          	jalr	-52(ra) # 800055f8 <_ZL9fibonaccim>
    80005634:	00050913          	mv	s2,a0
    80005638:	ffe48513          	addi	a0,s1,-2
    8000563c:	00000097          	auipc	ra,0x0
    80005640:	fbc080e7          	jalr	-68(ra) # 800055f8 <_ZL9fibonaccim>
    80005644:	00a90533          	add	a0,s2,a0
}
    80005648:	01813083          	ld	ra,24(sp)
    8000564c:	01013403          	ld	s0,16(sp)
    80005650:	00813483          	ld	s1,8(sp)
    80005654:	00013903          	ld	s2,0(sp)
    80005658:	02010113          	addi	sp,sp,32
    8000565c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005660:	ffffc097          	auipc	ra,0xffffc
    80005664:	0ac080e7          	jalr	172(ra) # 8000170c <_Z15thread_dispatchv>
    80005668:	fc1ff06f          	j	80005628 <_ZL9fibonaccim+0x30>

000000008000566c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    8000566c:	fe010113          	addi	sp,sp,-32
    80005670:	00113c23          	sd	ra,24(sp)
    80005674:	00813823          	sd	s0,16(sp)
    80005678:	00913423          	sd	s1,8(sp)
    8000567c:	01213023          	sd	s2,0(sp)
    80005680:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005684:	00a00493          	li	s1,10
    80005688:	0400006f          	j	800056c8 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000568c:	00004517          	auipc	a0,0x4
    80005690:	ae450513          	addi	a0,a0,-1308 # 80009170 <CONSOLE_STATUS+0x160>
    80005694:	fffff097          	auipc	ra,0xfffff
    80005698:	754080e7          	jalr	1876(ra) # 80004de8 <_Z11printStringPKc>
    8000569c:	00000613          	li	a2,0
    800056a0:	00a00593          	li	a1,10
    800056a4:	00048513          	mv	a0,s1
    800056a8:	00000097          	auipc	ra,0x0
    800056ac:	8f0080e7          	jalr	-1808(ra) # 80004f98 <_Z8printIntiii>
    800056b0:	00004517          	auipc	a0,0x4
    800056b4:	ce050513          	addi	a0,a0,-800 # 80009390 <CONSOLE_STATUS+0x380>
    800056b8:	fffff097          	auipc	ra,0xfffff
    800056bc:	730080e7          	jalr	1840(ra) # 80004de8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800056c0:	0014849b          	addiw	s1,s1,1
    800056c4:	0ff4f493          	andi	s1,s1,255
    800056c8:	00c00793          	li	a5,12
    800056cc:	fc97f0e3          	bgeu	a5,s1,8000568c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800056d0:	00004517          	auipc	a0,0x4
    800056d4:	aa850513          	addi	a0,a0,-1368 # 80009178 <CONSOLE_STATUS+0x168>
    800056d8:	fffff097          	auipc	ra,0xfffff
    800056dc:	710080e7          	jalr	1808(ra) # 80004de8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800056e0:	00500313          	li	t1,5
    thread_dispatch();
    800056e4:	ffffc097          	auipc	ra,0xffffc
    800056e8:	028080e7          	jalr	40(ra) # 8000170c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800056ec:	01000513          	li	a0,16
    800056f0:	00000097          	auipc	ra,0x0
    800056f4:	f08080e7          	jalr	-248(ra) # 800055f8 <_ZL9fibonaccim>
    800056f8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800056fc:	00004517          	auipc	a0,0x4
    80005700:	a8c50513          	addi	a0,a0,-1396 # 80009188 <CONSOLE_STATUS+0x178>
    80005704:	fffff097          	auipc	ra,0xfffff
    80005708:	6e4080e7          	jalr	1764(ra) # 80004de8 <_Z11printStringPKc>
    8000570c:	00000613          	li	a2,0
    80005710:	00a00593          	li	a1,10
    80005714:	0009051b          	sext.w	a0,s2
    80005718:	00000097          	auipc	ra,0x0
    8000571c:	880080e7          	jalr	-1920(ra) # 80004f98 <_Z8printIntiii>
    80005720:	00004517          	auipc	a0,0x4
    80005724:	c7050513          	addi	a0,a0,-912 # 80009390 <CONSOLE_STATUS+0x380>
    80005728:	fffff097          	auipc	ra,0xfffff
    8000572c:	6c0080e7          	jalr	1728(ra) # 80004de8 <_Z11printStringPKc>
    80005730:	0400006f          	j	80005770 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005734:	00004517          	auipc	a0,0x4
    80005738:	a3c50513          	addi	a0,a0,-1476 # 80009170 <CONSOLE_STATUS+0x160>
    8000573c:	fffff097          	auipc	ra,0xfffff
    80005740:	6ac080e7          	jalr	1708(ra) # 80004de8 <_Z11printStringPKc>
    80005744:	00000613          	li	a2,0
    80005748:	00a00593          	li	a1,10
    8000574c:	00048513          	mv	a0,s1
    80005750:	00000097          	auipc	ra,0x0
    80005754:	848080e7          	jalr	-1976(ra) # 80004f98 <_Z8printIntiii>
    80005758:	00004517          	auipc	a0,0x4
    8000575c:	c3850513          	addi	a0,a0,-968 # 80009390 <CONSOLE_STATUS+0x380>
    80005760:	fffff097          	auipc	ra,0xfffff
    80005764:	688080e7          	jalr	1672(ra) # 80004de8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005768:	0014849b          	addiw	s1,s1,1
    8000576c:	0ff4f493          	andi	s1,s1,255
    80005770:	00f00793          	li	a5,15
    80005774:	fc97f0e3          	bgeu	a5,s1,80005734 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005778:	00004517          	auipc	a0,0x4
    8000577c:	a2050513          	addi	a0,a0,-1504 # 80009198 <CONSOLE_STATUS+0x188>
    80005780:	fffff097          	auipc	ra,0xfffff
    80005784:	668080e7          	jalr	1640(ra) # 80004de8 <_Z11printStringPKc>
    finishedD = true;
    80005788:	00100793          	li	a5,1
    8000578c:	00006717          	auipc	a4,0x6
    80005790:	d6f70223          	sb	a5,-668(a4) # 8000b4f0 <_ZL9finishedD>
    thread_dispatch();
    80005794:	ffffc097          	auipc	ra,0xffffc
    80005798:	f78080e7          	jalr	-136(ra) # 8000170c <_Z15thread_dispatchv>
}
    8000579c:	01813083          	ld	ra,24(sp)
    800057a0:	01013403          	ld	s0,16(sp)
    800057a4:	00813483          	ld	s1,8(sp)
    800057a8:	00013903          	ld	s2,0(sp)
    800057ac:	02010113          	addi	sp,sp,32
    800057b0:	00008067          	ret

00000000800057b4 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800057b4:	fe010113          	addi	sp,sp,-32
    800057b8:	00113c23          	sd	ra,24(sp)
    800057bc:	00813823          	sd	s0,16(sp)
    800057c0:	00913423          	sd	s1,8(sp)
    800057c4:	01213023          	sd	s2,0(sp)
    800057c8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800057cc:	00000493          	li	s1,0
    800057d0:	0400006f          	j	80005810 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800057d4:	00004517          	auipc	a0,0x4
    800057d8:	96c50513          	addi	a0,a0,-1684 # 80009140 <CONSOLE_STATUS+0x130>
    800057dc:	fffff097          	auipc	ra,0xfffff
    800057e0:	60c080e7          	jalr	1548(ra) # 80004de8 <_Z11printStringPKc>
    800057e4:	00000613          	li	a2,0
    800057e8:	00a00593          	li	a1,10
    800057ec:	00048513          	mv	a0,s1
    800057f0:	fffff097          	auipc	ra,0xfffff
    800057f4:	7a8080e7          	jalr	1960(ra) # 80004f98 <_Z8printIntiii>
    800057f8:	00004517          	auipc	a0,0x4
    800057fc:	b9850513          	addi	a0,a0,-1128 # 80009390 <CONSOLE_STATUS+0x380>
    80005800:	fffff097          	auipc	ra,0xfffff
    80005804:	5e8080e7          	jalr	1512(ra) # 80004de8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005808:	0014849b          	addiw	s1,s1,1
    8000580c:	0ff4f493          	andi	s1,s1,255
    80005810:	00200793          	li	a5,2
    80005814:	fc97f0e3          	bgeu	a5,s1,800057d4 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005818:	00004517          	auipc	a0,0x4
    8000581c:	93050513          	addi	a0,a0,-1744 # 80009148 <CONSOLE_STATUS+0x138>
    80005820:	fffff097          	auipc	ra,0xfffff
    80005824:	5c8080e7          	jalr	1480(ra) # 80004de8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005828:	00700313          	li	t1,7
    thread_dispatch();
    8000582c:	ffffc097          	auipc	ra,0xffffc
    80005830:	ee0080e7          	jalr	-288(ra) # 8000170c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005834:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005838:	00004517          	auipc	a0,0x4
    8000583c:	92050513          	addi	a0,a0,-1760 # 80009158 <CONSOLE_STATUS+0x148>
    80005840:	fffff097          	auipc	ra,0xfffff
    80005844:	5a8080e7          	jalr	1448(ra) # 80004de8 <_Z11printStringPKc>
    80005848:	00000613          	li	a2,0
    8000584c:	00a00593          	li	a1,10
    80005850:	0009051b          	sext.w	a0,s2
    80005854:	fffff097          	auipc	ra,0xfffff
    80005858:	744080e7          	jalr	1860(ra) # 80004f98 <_Z8printIntiii>
    8000585c:	00004517          	auipc	a0,0x4
    80005860:	b3450513          	addi	a0,a0,-1228 # 80009390 <CONSOLE_STATUS+0x380>
    80005864:	fffff097          	auipc	ra,0xfffff
    80005868:	584080e7          	jalr	1412(ra) # 80004de8 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    8000586c:	00c00513          	li	a0,12
    80005870:	00000097          	auipc	ra,0x0
    80005874:	d88080e7          	jalr	-632(ra) # 800055f8 <_ZL9fibonaccim>
    80005878:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000587c:	00004517          	auipc	a0,0x4
    80005880:	8e450513          	addi	a0,a0,-1820 # 80009160 <CONSOLE_STATUS+0x150>
    80005884:	fffff097          	auipc	ra,0xfffff
    80005888:	564080e7          	jalr	1380(ra) # 80004de8 <_Z11printStringPKc>
    8000588c:	00000613          	li	a2,0
    80005890:	00a00593          	li	a1,10
    80005894:	0009051b          	sext.w	a0,s2
    80005898:	fffff097          	auipc	ra,0xfffff
    8000589c:	700080e7          	jalr	1792(ra) # 80004f98 <_Z8printIntiii>
    800058a0:	00004517          	auipc	a0,0x4
    800058a4:	af050513          	addi	a0,a0,-1296 # 80009390 <CONSOLE_STATUS+0x380>
    800058a8:	fffff097          	auipc	ra,0xfffff
    800058ac:	540080e7          	jalr	1344(ra) # 80004de8 <_Z11printStringPKc>
    800058b0:	0400006f          	j	800058f0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800058b4:	00004517          	auipc	a0,0x4
    800058b8:	88c50513          	addi	a0,a0,-1908 # 80009140 <CONSOLE_STATUS+0x130>
    800058bc:	fffff097          	auipc	ra,0xfffff
    800058c0:	52c080e7          	jalr	1324(ra) # 80004de8 <_Z11printStringPKc>
    800058c4:	00000613          	li	a2,0
    800058c8:	00a00593          	li	a1,10
    800058cc:	00048513          	mv	a0,s1
    800058d0:	fffff097          	auipc	ra,0xfffff
    800058d4:	6c8080e7          	jalr	1736(ra) # 80004f98 <_Z8printIntiii>
    800058d8:	00004517          	auipc	a0,0x4
    800058dc:	ab850513          	addi	a0,a0,-1352 # 80009390 <CONSOLE_STATUS+0x380>
    800058e0:	fffff097          	auipc	ra,0xfffff
    800058e4:	508080e7          	jalr	1288(ra) # 80004de8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800058e8:	0014849b          	addiw	s1,s1,1
    800058ec:	0ff4f493          	andi	s1,s1,255
    800058f0:	00500793          	li	a5,5
    800058f4:	fc97f0e3          	bgeu	a5,s1,800058b4 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800058f8:	00004517          	auipc	a0,0x4
    800058fc:	82050513          	addi	a0,a0,-2016 # 80009118 <CONSOLE_STATUS+0x108>
    80005900:	fffff097          	auipc	ra,0xfffff
    80005904:	4e8080e7          	jalr	1256(ra) # 80004de8 <_Z11printStringPKc>
    finishedC = true;
    80005908:	00100793          	li	a5,1
    8000590c:	00006717          	auipc	a4,0x6
    80005910:	bef702a3          	sb	a5,-1051(a4) # 8000b4f1 <_ZL9finishedC>
    thread_dispatch();
    80005914:	ffffc097          	auipc	ra,0xffffc
    80005918:	df8080e7          	jalr	-520(ra) # 8000170c <_Z15thread_dispatchv>
}
    8000591c:	01813083          	ld	ra,24(sp)
    80005920:	01013403          	ld	s0,16(sp)
    80005924:	00813483          	ld	s1,8(sp)
    80005928:	00013903          	ld	s2,0(sp)
    8000592c:	02010113          	addi	sp,sp,32
    80005930:	00008067          	ret

0000000080005934 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005934:	fe010113          	addi	sp,sp,-32
    80005938:	00113c23          	sd	ra,24(sp)
    8000593c:	00813823          	sd	s0,16(sp)
    80005940:	00913423          	sd	s1,8(sp)
    80005944:	01213023          	sd	s2,0(sp)
    80005948:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000594c:	00000913          	li	s2,0
    80005950:	0400006f          	j	80005990 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80005954:	ffffc097          	auipc	ra,0xffffc
    80005958:	db8080e7          	jalr	-584(ra) # 8000170c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000595c:	00148493          	addi	s1,s1,1
    80005960:	000027b7          	lui	a5,0x2
    80005964:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005968:	0097ee63          	bltu	a5,s1,80005984 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000596c:	00000713          	li	a4,0
    80005970:	000077b7          	lui	a5,0x7
    80005974:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005978:	fce7eee3          	bltu	a5,a4,80005954 <_ZL11workerBodyBPv+0x20>
    8000597c:	00170713          	addi	a4,a4,1
    80005980:	ff1ff06f          	j	80005970 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80005984:	00a00793          	li	a5,10
    80005988:	04f90663          	beq	s2,a5,800059d4 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    8000598c:	00190913          	addi	s2,s2,1
    80005990:	00f00793          	li	a5,15
    80005994:	0527e463          	bltu	a5,s2,800059dc <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005998:	00003517          	auipc	a0,0x3
    8000599c:	79050513          	addi	a0,a0,1936 # 80009128 <CONSOLE_STATUS+0x118>
    800059a0:	fffff097          	auipc	ra,0xfffff
    800059a4:	448080e7          	jalr	1096(ra) # 80004de8 <_Z11printStringPKc>
    800059a8:	00000613          	li	a2,0
    800059ac:	00a00593          	li	a1,10
    800059b0:	0009051b          	sext.w	a0,s2
    800059b4:	fffff097          	auipc	ra,0xfffff
    800059b8:	5e4080e7          	jalr	1508(ra) # 80004f98 <_Z8printIntiii>
    800059bc:	00004517          	auipc	a0,0x4
    800059c0:	9d450513          	addi	a0,a0,-1580 # 80009390 <CONSOLE_STATUS+0x380>
    800059c4:	fffff097          	auipc	ra,0xfffff
    800059c8:	424080e7          	jalr	1060(ra) # 80004de8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800059cc:	00000493          	li	s1,0
    800059d0:	f91ff06f          	j	80005960 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800059d4:	14102ff3          	csrr	t6,sepc
    800059d8:	fb5ff06f          	j	8000598c <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800059dc:	00003517          	auipc	a0,0x3
    800059e0:	75450513          	addi	a0,a0,1876 # 80009130 <CONSOLE_STATUS+0x120>
    800059e4:	fffff097          	auipc	ra,0xfffff
    800059e8:	404080e7          	jalr	1028(ra) # 80004de8 <_Z11printStringPKc>
    finishedB = true;
    800059ec:	00100793          	li	a5,1
    800059f0:	00006717          	auipc	a4,0x6
    800059f4:	b0f70123          	sb	a5,-1278(a4) # 8000b4f2 <_ZL9finishedB>
    thread_dispatch();
    800059f8:	ffffc097          	auipc	ra,0xffffc
    800059fc:	d14080e7          	jalr	-748(ra) # 8000170c <_Z15thread_dispatchv>
}
    80005a00:	01813083          	ld	ra,24(sp)
    80005a04:	01013403          	ld	s0,16(sp)
    80005a08:	00813483          	ld	s1,8(sp)
    80005a0c:	00013903          	ld	s2,0(sp)
    80005a10:	02010113          	addi	sp,sp,32
    80005a14:	00008067          	ret

0000000080005a18 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005a18:	fe010113          	addi	sp,sp,-32
    80005a1c:	00113c23          	sd	ra,24(sp)
    80005a20:	00813823          	sd	s0,16(sp)
    80005a24:	00913423          	sd	s1,8(sp)
    80005a28:	01213023          	sd	s2,0(sp)
    80005a2c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005a30:	00000913          	li	s2,0
    80005a34:	0380006f          	j	80005a6c <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005a38:	ffffc097          	auipc	ra,0xffffc
    80005a3c:	cd4080e7          	jalr	-812(ra) # 8000170c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005a40:	00148493          	addi	s1,s1,1
    80005a44:	000027b7          	lui	a5,0x2
    80005a48:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005a4c:	0097ee63          	bltu	a5,s1,80005a68 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005a50:	00000713          	li	a4,0
    80005a54:	000077b7          	lui	a5,0x7
    80005a58:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005a5c:	fce7eee3          	bltu	a5,a4,80005a38 <_ZL11workerBodyAPv+0x20>
    80005a60:	00170713          	addi	a4,a4,1
    80005a64:	ff1ff06f          	j	80005a54 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80005a68:	00190913          	addi	s2,s2,1
    80005a6c:	00900793          	li	a5,9
    80005a70:	0527e063          	bltu	a5,s2,80005ab0 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005a74:	00003517          	auipc	a0,0x3
    80005a78:	69c50513          	addi	a0,a0,1692 # 80009110 <CONSOLE_STATUS+0x100>
    80005a7c:	fffff097          	auipc	ra,0xfffff
    80005a80:	36c080e7          	jalr	876(ra) # 80004de8 <_Z11printStringPKc>
    80005a84:	00000613          	li	a2,0
    80005a88:	00a00593          	li	a1,10
    80005a8c:	0009051b          	sext.w	a0,s2
    80005a90:	fffff097          	auipc	ra,0xfffff
    80005a94:	508080e7          	jalr	1288(ra) # 80004f98 <_Z8printIntiii>
    80005a98:	00004517          	auipc	a0,0x4
    80005a9c:	8f850513          	addi	a0,a0,-1800 # 80009390 <CONSOLE_STATUS+0x380>
    80005aa0:	fffff097          	auipc	ra,0xfffff
    80005aa4:	348080e7          	jalr	840(ra) # 80004de8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005aa8:	00000493          	li	s1,0
    80005aac:	f99ff06f          	j	80005a44 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005ab0:	00003517          	auipc	a0,0x3
    80005ab4:	66850513          	addi	a0,a0,1640 # 80009118 <CONSOLE_STATUS+0x108>
    80005ab8:	fffff097          	auipc	ra,0xfffff
    80005abc:	330080e7          	jalr	816(ra) # 80004de8 <_Z11printStringPKc>
    finishedA = true;
    80005ac0:	00100793          	li	a5,1
    80005ac4:	00006717          	auipc	a4,0x6
    80005ac8:	a2f707a3          	sb	a5,-1489(a4) # 8000b4f3 <_ZL9finishedA>
}
    80005acc:	01813083          	ld	ra,24(sp)
    80005ad0:	01013403          	ld	s0,16(sp)
    80005ad4:	00813483          	ld	s1,8(sp)
    80005ad8:	00013903          	ld	s2,0(sp)
    80005adc:	02010113          	addi	sp,sp,32
    80005ae0:	00008067          	ret

0000000080005ae4 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005ae4:	fd010113          	addi	sp,sp,-48
    80005ae8:	02113423          	sd	ra,40(sp)
    80005aec:	02813023          	sd	s0,32(sp)
    80005af0:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005af4:	00000613          	li	a2,0
    80005af8:	00000597          	auipc	a1,0x0
    80005afc:	f2058593          	addi	a1,a1,-224 # 80005a18 <_ZL11workerBodyAPv>
    80005b00:	fd040513          	addi	a0,s0,-48
    80005b04:	ffffc097          	auipc	ra,0xffffc
    80005b08:	b38080e7          	jalr	-1224(ra) # 8000163c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80005b0c:	00003517          	auipc	a0,0x3
    80005b10:	69c50513          	addi	a0,a0,1692 # 800091a8 <CONSOLE_STATUS+0x198>
    80005b14:	fffff097          	auipc	ra,0xfffff
    80005b18:	2d4080e7          	jalr	724(ra) # 80004de8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005b1c:	00000613          	li	a2,0
    80005b20:	00000597          	auipc	a1,0x0
    80005b24:	e1458593          	addi	a1,a1,-492 # 80005934 <_ZL11workerBodyBPv>
    80005b28:	fd840513          	addi	a0,s0,-40
    80005b2c:	ffffc097          	auipc	ra,0xffffc
    80005b30:	b10080e7          	jalr	-1264(ra) # 8000163c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80005b34:	00003517          	auipc	a0,0x3
    80005b38:	68c50513          	addi	a0,a0,1676 # 800091c0 <CONSOLE_STATUS+0x1b0>
    80005b3c:	fffff097          	auipc	ra,0xfffff
    80005b40:	2ac080e7          	jalr	684(ra) # 80004de8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005b44:	00000613          	li	a2,0
    80005b48:	00000597          	auipc	a1,0x0
    80005b4c:	c6c58593          	addi	a1,a1,-916 # 800057b4 <_ZL11workerBodyCPv>
    80005b50:	fe040513          	addi	a0,s0,-32
    80005b54:	ffffc097          	auipc	ra,0xffffc
    80005b58:	ae8080e7          	jalr	-1304(ra) # 8000163c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80005b5c:	00003517          	auipc	a0,0x3
    80005b60:	67c50513          	addi	a0,a0,1660 # 800091d8 <CONSOLE_STATUS+0x1c8>
    80005b64:	fffff097          	auipc	ra,0xfffff
    80005b68:	284080e7          	jalr	644(ra) # 80004de8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005b6c:	00000613          	li	a2,0
    80005b70:	00000597          	auipc	a1,0x0
    80005b74:	afc58593          	addi	a1,a1,-1284 # 8000566c <_ZL11workerBodyDPv>
    80005b78:	fe840513          	addi	a0,s0,-24
    80005b7c:	ffffc097          	auipc	ra,0xffffc
    80005b80:	ac0080e7          	jalr	-1344(ra) # 8000163c <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005b84:	00003517          	auipc	a0,0x3
    80005b88:	66c50513          	addi	a0,a0,1644 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80005b8c:	fffff097          	auipc	ra,0xfffff
    80005b90:	25c080e7          	jalr	604(ra) # 80004de8 <_Z11printStringPKc>
    80005b94:	00c0006f          	j	80005ba0 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005b98:	ffffc097          	auipc	ra,0xffffc
    80005b9c:	b74080e7          	jalr	-1164(ra) # 8000170c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005ba0:	00006797          	auipc	a5,0x6
    80005ba4:	9537c783          	lbu	a5,-1709(a5) # 8000b4f3 <_ZL9finishedA>
    80005ba8:	fe0788e3          	beqz	a5,80005b98 <_Z16System_Mode_testv+0xb4>
    80005bac:	00006797          	auipc	a5,0x6
    80005bb0:	9467c783          	lbu	a5,-1722(a5) # 8000b4f2 <_ZL9finishedB>
    80005bb4:	fe0782e3          	beqz	a5,80005b98 <_Z16System_Mode_testv+0xb4>
    80005bb8:	00006797          	auipc	a5,0x6
    80005bbc:	9397c783          	lbu	a5,-1735(a5) # 8000b4f1 <_ZL9finishedC>
    80005bc0:	fc078ce3          	beqz	a5,80005b98 <_Z16System_Mode_testv+0xb4>
    80005bc4:	00006797          	auipc	a5,0x6
    80005bc8:	92c7c783          	lbu	a5,-1748(a5) # 8000b4f0 <_ZL9finishedD>
    80005bcc:	fc0786e3          	beqz	a5,80005b98 <_Z16System_Mode_testv+0xb4>
    }

}
    80005bd0:	02813083          	ld	ra,40(sp)
    80005bd4:	02013403          	ld	s0,32(sp)
    80005bd8:	03010113          	addi	sp,sp,48
    80005bdc:	00008067          	ret

0000000080005be0 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005be0:	fe010113          	addi	sp,sp,-32
    80005be4:	00113c23          	sd	ra,24(sp)
    80005be8:	00813823          	sd	s0,16(sp)
    80005bec:	00913423          	sd	s1,8(sp)
    80005bf0:	01213023          	sd	s2,0(sp)
    80005bf4:	02010413          	addi	s0,sp,32
    80005bf8:	00050493          	mv	s1,a0
    80005bfc:	00058913          	mv	s2,a1
    80005c00:	0015879b          	addiw	a5,a1,1
    80005c04:	0007851b          	sext.w	a0,a5
    80005c08:	00f4a023          	sw	a5,0(s1)
    80005c0c:	0004a823          	sw	zero,16(s1)
    80005c10:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005c14:	00251513          	slli	a0,a0,0x2
    80005c18:	ffffc097          	auipc	ra,0xffffc
    80005c1c:	978080e7          	jalr	-1672(ra) # 80001590 <_Z9mem_allocm>
    80005c20:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005c24:	00000593          	li	a1,0
    80005c28:	02048513          	addi	a0,s1,32
    80005c2c:	ffffc097          	auipc	ra,0xffffc
    80005c30:	b1c080e7          	jalr	-1252(ra) # 80001748 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80005c34:	00090593          	mv	a1,s2
    80005c38:	01848513          	addi	a0,s1,24
    80005c3c:	ffffc097          	auipc	ra,0xffffc
    80005c40:	b0c080e7          	jalr	-1268(ra) # 80001748 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80005c44:	00100593          	li	a1,1
    80005c48:	02848513          	addi	a0,s1,40
    80005c4c:	ffffc097          	auipc	ra,0xffffc
    80005c50:	afc080e7          	jalr	-1284(ra) # 80001748 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80005c54:	00100593          	li	a1,1
    80005c58:	03048513          	addi	a0,s1,48
    80005c5c:	ffffc097          	auipc	ra,0xffffc
    80005c60:	aec080e7          	jalr	-1300(ra) # 80001748 <_Z8sem_openPP3Semj>
}
    80005c64:	01813083          	ld	ra,24(sp)
    80005c68:	01013403          	ld	s0,16(sp)
    80005c6c:	00813483          	ld	s1,8(sp)
    80005c70:	00013903          	ld	s2,0(sp)
    80005c74:	02010113          	addi	sp,sp,32
    80005c78:	00008067          	ret

0000000080005c7c <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005c7c:	fe010113          	addi	sp,sp,-32
    80005c80:	00113c23          	sd	ra,24(sp)
    80005c84:	00813823          	sd	s0,16(sp)
    80005c88:	00913423          	sd	s1,8(sp)
    80005c8c:	01213023          	sd	s2,0(sp)
    80005c90:	02010413          	addi	s0,sp,32
    80005c94:	00050493          	mv	s1,a0
    80005c98:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005c9c:	01853503          	ld	a0,24(a0)
    80005ca0:	ffffc097          	auipc	ra,0xffffc
    80005ca4:	b34080e7          	jalr	-1228(ra) # 800017d4 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80005ca8:	0304b503          	ld	a0,48(s1)
    80005cac:	ffffc097          	auipc	ra,0xffffc
    80005cb0:	b28080e7          	jalr	-1240(ra) # 800017d4 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80005cb4:	0084b783          	ld	a5,8(s1)
    80005cb8:	0144a703          	lw	a4,20(s1)
    80005cbc:	00271713          	slli	a4,a4,0x2
    80005cc0:	00e787b3          	add	a5,a5,a4
    80005cc4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005cc8:	0144a783          	lw	a5,20(s1)
    80005ccc:	0017879b          	addiw	a5,a5,1
    80005cd0:	0004a703          	lw	a4,0(s1)
    80005cd4:	02e7e7bb          	remw	a5,a5,a4
    80005cd8:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005cdc:	0304b503          	ld	a0,48(s1)
    80005ce0:	ffffc097          	auipc	ra,0xffffc
    80005ce4:	b7c080e7          	jalr	-1156(ra) # 8000185c <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80005ce8:	0204b503          	ld	a0,32(s1)
    80005cec:	ffffc097          	auipc	ra,0xffffc
    80005cf0:	b70080e7          	jalr	-1168(ra) # 8000185c <_Z10sem_signalP3Sem>

}
    80005cf4:	01813083          	ld	ra,24(sp)
    80005cf8:	01013403          	ld	s0,16(sp)
    80005cfc:	00813483          	ld	s1,8(sp)
    80005d00:	00013903          	ld	s2,0(sp)
    80005d04:	02010113          	addi	sp,sp,32
    80005d08:	00008067          	ret

0000000080005d0c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005d0c:	fe010113          	addi	sp,sp,-32
    80005d10:	00113c23          	sd	ra,24(sp)
    80005d14:	00813823          	sd	s0,16(sp)
    80005d18:	00913423          	sd	s1,8(sp)
    80005d1c:	01213023          	sd	s2,0(sp)
    80005d20:	02010413          	addi	s0,sp,32
    80005d24:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005d28:	02053503          	ld	a0,32(a0)
    80005d2c:	ffffc097          	auipc	ra,0xffffc
    80005d30:	aa8080e7          	jalr	-1368(ra) # 800017d4 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    80005d34:	0284b503          	ld	a0,40(s1)
    80005d38:	ffffc097          	auipc	ra,0xffffc
    80005d3c:	a9c080e7          	jalr	-1380(ra) # 800017d4 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80005d40:	0084b703          	ld	a4,8(s1)
    80005d44:	0104a783          	lw	a5,16(s1)
    80005d48:	00279693          	slli	a3,a5,0x2
    80005d4c:	00d70733          	add	a4,a4,a3
    80005d50:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005d54:	0017879b          	addiw	a5,a5,1
    80005d58:	0004a703          	lw	a4,0(s1)
    80005d5c:	02e7e7bb          	remw	a5,a5,a4
    80005d60:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005d64:	0284b503          	ld	a0,40(s1)
    80005d68:	ffffc097          	auipc	ra,0xffffc
    80005d6c:	af4080e7          	jalr	-1292(ra) # 8000185c <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80005d70:	0184b503          	ld	a0,24(s1)
    80005d74:	ffffc097          	auipc	ra,0xffffc
    80005d78:	ae8080e7          	jalr	-1304(ra) # 8000185c <_Z10sem_signalP3Sem>

    return ret;
}
    80005d7c:	00090513          	mv	a0,s2
    80005d80:	01813083          	ld	ra,24(sp)
    80005d84:	01013403          	ld	s0,16(sp)
    80005d88:	00813483          	ld	s1,8(sp)
    80005d8c:	00013903          	ld	s2,0(sp)
    80005d90:	02010113          	addi	sp,sp,32
    80005d94:	00008067          	ret

0000000080005d98 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005d98:	fe010113          	addi	sp,sp,-32
    80005d9c:	00113c23          	sd	ra,24(sp)
    80005da0:	00813823          	sd	s0,16(sp)
    80005da4:	00913423          	sd	s1,8(sp)
    80005da8:	01213023          	sd	s2,0(sp)
    80005dac:	02010413          	addi	s0,sp,32
    80005db0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005db4:	02853503          	ld	a0,40(a0)
    80005db8:	ffffc097          	auipc	ra,0xffffc
    80005dbc:	a1c080e7          	jalr	-1508(ra) # 800017d4 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80005dc0:	0304b503          	ld	a0,48(s1)
    80005dc4:	ffffc097          	auipc	ra,0xffffc
    80005dc8:	a10080e7          	jalr	-1520(ra) # 800017d4 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80005dcc:	0144a783          	lw	a5,20(s1)
    80005dd0:	0104a903          	lw	s2,16(s1)
    80005dd4:	0327ce63          	blt	a5,s2,80005e10 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005dd8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005ddc:	0304b503          	ld	a0,48(s1)
    80005de0:	ffffc097          	auipc	ra,0xffffc
    80005de4:	a7c080e7          	jalr	-1412(ra) # 8000185c <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80005de8:	0284b503          	ld	a0,40(s1)
    80005dec:	ffffc097          	auipc	ra,0xffffc
    80005df0:	a70080e7          	jalr	-1424(ra) # 8000185c <_Z10sem_signalP3Sem>

    return ret;
}
    80005df4:	00090513          	mv	a0,s2
    80005df8:	01813083          	ld	ra,24(sp)
    80005dfc:	01013403          	ld	s0,16(sp)
    80005e00:	00813483          	ld	s1,8(sp)
    80005e04:	00013903          	ld	s2,0(sp)
    80005e08:	02010113          	addi	sp,sp,32
    80005e0c:	00008067          	ret
        ret = cap - head + tail;
    80005e10:	0004a703          	lw	a4,0(s1)
    80005e14:	4127093b          	subw	s2,a4,s2
    80005e18:	00f9093b          	addw	s2,s2,a5
    80005e1c:	fc1ff06f          	j	80005ddc <_ZN6Buffer6getCntEv+0x44>

0000000080005e20 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005e20:	fe010113          	addi	sp,sp,-32
    80005e24:	00113c23          	sd	ra,24(sp)
    80005e28:	00813823          	sd	s0,16(sp)
    80005e2c:	00913423          	sd	s1,8(sp)
    80005e30:	02010413          	addi	s0,sp,32
    80005e34:	00050493          	mv	s1,a0
    putc('\n');
    80005e38:	00a00513          	li	a0,10
    80005e3c:	ffffc097          	auipc	ra,0xffffc
    80005e40:	aa8080e7          	jalr	-1368(ra) # 800018e4 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005e44:	00003517          	auipc	a0,0x3
    80005e48:	3c450513          	addi	a0,a0,964 # 80009208 <CONSOLE_STATUS+0x1f8>
    80005e4c:	fffff097          	auipc	ra,0xfffff
    80005e50:	f9c080e7          	jalr	-100(ra) # 80004de8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005e54:	00048513          	mv	a0,s1
    80005e58:	00000097          	auipc	ra,0x0
    80005e5c:	f40080e7          	jalr	-192(ra) # 80005d98 <_ZN6Buffer6getCntEv>
    80005e60:	02a05c63          	blez	a0,80005e98 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005e64:	0084b783          	ld	a5,8(s1)
    80005e68:	0104a703          	lw	a4,16(s1)
    80005e6c:	00271713          	slli	a4,a4,0x2
    80005e70:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005e74:	0007c503          	lbu	a0,0(a5)
    80005e78:	ffffc097          	auipc	ra,0xffffc
    80005e7c:	a6c080e7          	jalr	-1428(ra) # 800018e4 <_Z4putcc>
        head = (head + 1) % cap;
    80005e80:	0104a783          	lw	a5,16(s1)
    80005e84:	0017879b          	addiw	a5,a5,1
    80005e88:	0004a703          	lw	a4,0(s1)
    80005e8c:	02e7e7bb          	remw	a5,a5,a4
    80005e90:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005e94:	fc1ff06f          	j	80005e54 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005e98:	02100513          	li	a0,33
    80005e9c:	ffffc097          	auipc	ra,0xffffc
    80005ea0:	a48080e7          	jalr	-1464(ra) # 800018e4 <_Z4putcc>
    putc('\n');
    80005ea4:	00a00513          	li	a0,10
    80005ea8:	ffffc097          	auipc	ra,0xffffc
    80005eac:	a3c080e7          	jalr	-1476(ra) # 800018e4 <_Z4putcc>
    mem_free(buffer);
    80005eb0:	0084b503          	ld	a0,8(s1)
    80005eb4:	ffffb097          	auipc	ra,0xffffb
    80005eb8:	73c080e7          	jalr	1852(ra) # 800015f0 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005ebc:	0204b503          	ld	a0,32(s1)
    80005ec0:	ffffc097          	auipc	ra,0xffffc
    80005ec4:	8d0080e7          	jalr	-1840(ra) # 80001790 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80005ec8:	0184b503          	ld	a0,24(s1)
    80005ecc:	ffffc097          	auipc	ra,0xffffc
    80005ed0:	8c4080e7          	jalr	-1852(ra) # 80001790 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80005ed4:	0304b503          	ld	a0,48(s1)
    80005ed8:	ffffc097          	auipc	ra,0xffffc
    80005edc:	8b8080e7          	jalr	-1864(ra) # 80001790 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80005ee0:	0284b503          	ld	a0,40(s1)
    80005ee4:	ffffc097          	auipc	ra,0xffffc
    80005ee8:	8ac080e7          	jalr	-1876(ra) # 80001790 <_Z9sem_closeP3Sem>
}
    80005eec:	01813083          	ld	ra,24(sp)
    80005ef0:	01013403          	ld	s0,16(sp)
    80005ef4:	00813483          	ld	s1,8(sp)
    80005ef8:	02010113          	addi	sp,sp,32
    80005efc:	00008067          	ret

0000000080005f00 <start>:
    80005f00:	ff010113          	addi	sp,sp,-16
    80005f04:	00813423          	sd	s0,8(sp)
    80005f08:	01010413          	addi	s0,sp,16
    80005f0c:	300027f3          	csrr	a5,mstatus
    80005f10:	ffffe737          	lui	a4,0xffffe
    80005f14:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff209f>
    80005f18:	00e7f7b3          	and	a5,a5,a4
    80005f1c:	00001737          	lui	a4,0x1
    80005f20:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005f24:	00e7e7b3          	or	a5,a5,a4
    80005f28:	30079073          	csrw	mstatus,a5
    80005f2c:	00000797          	auipc	a5,0x0
    80005f30:	16078793          	addi	a5,a5,352 # 8000608c <system_main>
    80005f34:	34179073          	csrw	mepc,a5
    80005f38:	00000793          	li	a5,0
    80005f3c:	18079073          	csrw	satp,a5
    80005f40:	000107b7          	lui	a5,0x10
    80005f44:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005f48:	30279073          	csrw	medeleg,a5
    80005f4c:	30379073          	csrw	mideleg,a5
    80005f50:	104027f3          	csrr	a5,sie
    80005f54:	2227e793          	ori	a5,a5,546
    80005f58:	10479073          	csrw	sie,a5
    80005f5c:	fff00793          	li	a5,-1
    80005f60:	00a7d793          	srli	a5,a5,0xa
    80005f64:	3b079073          	csrw	pmpaddr0,a5
    80005f68:	00f00793          	li	a5,15
    80005f6c:	3a079073          	csrw	pmpcfg0,a5
    80005f70:	f14027f3          	csrr	a5,mhartid
    80005f74:	0200c737          	lui	a4,0x200c
    80005f78:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005f7c:	0007869b          	sext.w	a3,a5
    80005f80:	00269713          	slli	a4,a3,0x2
    80005f84:	000f4637          	lui	a2,0xf4
    80005f88:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005f8c:	00d70733          	add	a4,a4,a3
    80005f90:	0037979b          	slliw	a5,a5,0x3
    80005f94:	020046b7          	lui	a3,0x2004
    80005f98:	00d787b3          	add	a5,a5,a3
    80005f9c:	00c585b3          	add	a1,a1,a2
    80005fa0:	00371693          	slli	a3,a4,0x3
    80005fa4:	00005717          	auipc	a4,0x5
    80005fa8:	55c70713          	addi	a4,a4,1372 # 8000b500 <timer_scratch>
    80005fac:	00b7b023          	sd	a1,0(a5)
    80005fb0:	00d70733          	add	a4,a4,a3
    80005fb4:	00f73c23          	sd	a5,24(a4)
    80005fb8:	02c73023          	sd	a2,32(a4)
    80005fbc:	34071073          	csrw	mscratch,a4
    80005fc0:	00000797          	auipc	a5,0x0
    80005fc4:	6e078793          	addi	a5,a5,1760 # 800066a0 <timervec>
    80005fc8:	30579073          	csrw	mtvec,a5
    80005fcc:	300027f3          	csrr	a5,mstatus
    80005fd0:	0087e793          	ori	a5,a5,8
    80005fd4:	30079073          	csrw	mstatus,a5
    80005fd8:	304027f3          	csrr	a5,mie
    80005fdc:	0807e793          	ori	a5,a5,128
    80005fe0:	30479073          	csrw	mie,a5
    80005fe4:	f14027f3          	csrr	a5,mhartid
    80005fe8:	0007879b          	sext.w	a5,a5
    80005fec:	00078213          	mv	tp,a5
    80005ff0:	30200073          	mret
    80005ff4:	00813403          	ld	s0,8(sp)
    80005ff8:	01010113          	addi	sp,sp,16
    80005ffc:	00008067          	ret

0000000080006000 <timerinit>:
    80006000:	ff010113          	addi	sp,sp,-16
    80006004:	00813423          	sd	s0,8(sp)
    80006008:	01010413          	addi	s0,sp,16
    8000600c:	f14027f3          	csrr	a5,mhartid
    80006010:	0200c737          	lui	a4,0x200c
    80006014:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006018:	0007869b          	sext.w	a3,a5
    8000601c:	00269713          	slli	a4,a3,0x2
    80006020:	000f4637          	lui	a2,0xf4
    80006024:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006028:	00d70733          	add	a4,a4,a3
    8000602c:	0037979b          	slliw	a5,a5,0x3
    80006030:	020046b7          	lui	a3,0x2004
    80006034:	00d787b3          	add	a5,a5,a3
    80006038:	00c585b3          	add	a1,a1,a2
    8000603c:	00371693          	slli	a3,a4,0x3
    80006040:	00005717          	auipc	a4,0x5
    80006044:	4c070713          	addi	a4,a4,1216 # 8000b500 <timer_scratch>
    80006048:	00b7b023          	sd	a1,0(a5)
    8000604c:	00d70733          	add	a4,a4,a3
    80006050:	00f73c23          	sd	a5,24(a4)
    80006054:	02c73023          	sd	a2,32(a4)
    80006058:	34071073          	csrw	mscratch,a4
    8000605c:	00000797          	auipc	a5,0x0
    80006060:	64478793          	addi	a5,a5,1604 # 800066a0 <timervec>
    80006064:	30579073          	csrw	mtvec,a5
    80006068:	300027f3          	csrr	a5,mstatus
    8000606c:	0087e793          	ori	a5,a5,8
    80006070:	30079073          	csrw	mstatus,a5
    80006074:	304027f3          	csrr	a5,mie
    80006078:	0807e793          	ori	a5,a5,128
    8000607c:	30479073          	csrw	mie,a5
    80006080:	00813403          	ld	s0,8(sp)
    80006084:	01010113          	addi	sp,sp,16
    80006088:	00008067          	ret

000000008000608c <system_main>:
    8000608c:	fe010113          	addi	sp,sp,-32
    80006090:	00813823          	sd	s0,16(sp)
    80006094:	00913423          	sd	s1,8(sp)
    80006098:	00113c23          	sd	ra,24(sp)
    8000609c:	02010413          	addi	s0,sp,32
    800060a0:	00000097          	auipc	ra,0x0
    800060a4:	0c4080e7          	jalr	196(ra) # 80006164 <cpuid>
    800060a8:	00005497          	auipc	s1,0x5
    800060ac:	38848493          	addi	s1,s1,904 # 8000b430 <started>
    800060b0:	02050263          	beqz	a0,800060d4 <system_main+0x48>
    800060b4:	0004a783          	lw	a5,0(s1)
    800060b8:	0007879b          	sext.w	a5,a5
    800060bc:	fe078ce3          	beqz	a5,800060b4 <system_main+0x28>
    800060c0:	0ff0000f          	fence
    800060c4:	00003517          	auipc	a0,0x3
    800060c8:	3c450513          	addi	a0,a0,964 # 80009488 <CONSOLE_STATUS+0x478>
    800060cc:	00001097          	auipc	ra,0x1
    800060d0:	a70080e7          	jalr	-1424(ra) # 80006b3c <panic>
    800060d4:	00001097          	auipc	ra,0x1
    800060d8:	9c4080e7          	jalr	-1596(ra) # 80006a98 <consoleinit>
    800060dc:	00001097          	auipc	ra,0x1
    800060e0:	150080e7          	jalr	336(ra) # 8000722c <printfinit>
    800060e4:	00003517          	auipc	a0,0x3
    800060e8:	2ac50513          	addi	a0,a0,684 # 80009390 <CONSOLE_STATUS+0x380>
    800060ec:	00001097          	auipc	ra,0x1
    800060f0:	aac080e7          	jalr	-1364(ra) # 80006b98 <__printf>
    800060f4:	00003517          	auipc	a0,0x3
    800060f8:	36450513          	addi	a0,a0,868 # 80009458 <CONSOLE_STATUS+0x448>
    800060fc:	00001097          	auipc	ra,0x1
    80006100:	a9c080e7          	jalr	-1380(ra) # 80006b98 <__printf>
    80006104:	00003517          	auipc	a0,0x3
    80006108:	28c50513          	addi	a0,a0,652 # 80009390 <CONSOLE_STATUS+0x380>
    8000610c:	00001097          	auipc	ra,0x1
    80006110:	a8c080e7          	jalr	-1396(ra) # 80006b98 <__printf>
    80006114:	00001097          	auipc	ra,0x1
    80006118:	4a4080e7          	jalr	1188(ra) # 800075b8 <kinit>
    8000611c:	00000097          	auipc	ra,0x0
    80006120:	148080e7          	jalr	328(ra) # 80006264 <trapinit>
    80006124:	00000097          	auipc	ra,0x0
    80006128:	16c080e7          	jalr	364(ra) # 80006290 <trapinithart>
    8000612c:	00000097          	auipc	ra,0x0
    80006130:	5b4080e7          	jalr	1460(ra) # 800066e0 <plicinit>
    80006134:	00000097          	auipc	ra,0x0
    80006138:	5d4080e7          	jalr	1492(ra) # 80006708 <plicinithart>
    8000613c:	00000097          	auipc	ra,0x0
    80006140:	078080e7          	jalr	120(ra) # 800061b4 <userinit>
    80006144:	0ff0000f          	fence
    80006148:	00100793          	li	a5,1
    8000614c:	00003517          	auipc	a0,0x3
    80006150:	32450513          	addi	a0,a0,804 # 80009470 <CONSOLE_STATUS+0x460>
    80006154:	00f4a023          	sw	a5,0(s1)
    80006158:	00001097          	auipc	ra,0x1
    8000615c:	a40080e7          	jalr	-1472(ra) # 80006b98 <__printf>
    80006160:	0000006f          	j	80006160 <system_main+0xd4>

0000000080006164 <cpuid>:
    80006164:	ff010113          	addi	sp,sp,-16
    80006168:	00813423          	sd	s0,8(sp)
    8000616c:	01010413          	addi	s0,sp,16
    80006170:	00020513          	mv	a0,tp
    80006174:	00813403          	ld	s0,8(sp)
    80006178:	0005051b          	sext.w	a0,a0
    8000617c:	01010113          	addi	sp,sp,16
    80006180:	00008067          	ret

0000000080006184 <mycpu>:
    80006184:	ff010113          	addi	sp,sp,-16
    80006188:	00813423          	sd	s0,8(sp)
    8000618c:	01010413          	addi	s0,sp,16
    80006190:	00020793          	mv	a5,tp
    80006194:	00813403          	ld	s0,8(sp)
    80006198:	0007879b          	sext.w	a5,a5
    8000619c:	00779793          	slli	a5,a5,0x7
    800061a0:	00006517          	auipc	a0,0x6
    800061a4:	39050513          	addi	a0,a0,912 # 8000c530 <cpus>
    800061a8:	00f50533          	add	a0,a0,a5
    800061ac:	01010113          	addi	sp,sp,16
    800061b0:	00008067          	ret

00000000800061b4 <userinit>:
    800061b4:	ff010113          	addi	sp,sp,-16
    800061b8:	00813423          	sd	s0,8(sp)
    800061bc:	01010413          	addi	s0,sp,16
    800061c0:	00813403          	ld	s0,8(sp)
    800061c4:	01010113          	addi	sp,sp,16
    800061c8:	ffffc317          	auipc	t1,0xffffc
    800061cc:	cd830067          	jr	-808(t1) # 80001ea0 <main>

00000000800061d0 <either_copyout>:
    800061d0:	ff010113          	addi	sp,sp,-16
    800061d4:	00813023          	sd	s0,0(sp)
    800061d8:	00113423          	sd	ra,8(sp)
    800061dc:	01010413          	addi	s0,sp,16
    800061e0:	02051663          	bnez	a0,8000620c <either_copyout+0x3c>
    800061e4:	00058513          	mv	a0,a1
    800061e8:	00060593          	mv	a1,a2
    800061ec:	0006861b          	sext.w	a2,a3
    800061f0:	00002097          	auipc	ra,0x2
    800061f4:	c54080e7          	jalr	-940(ra) # 80007e44 <__memmove>
    800061f8:	00813083          	ld	ra,8(sp)
    800061fc:	00013403          	ld	s0,0(sp)
    80006200:	00000513          	li	a0,0
    80006204:	01010113          	addi	sp,sp,16
    80006208:	00008067          	ret
    8000620c:	00003517          	auipc	a0,0x3
    80006210:	2a450513          	addi	a0,a0,676 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80006214:	00001097          	auipc	ra,0x1
    80006218:	928080e7          	jalr	-1752(ra) # 80006b3c <panic>

000000008000621c <either_copyin>:
    8000621c:	ff010113          	addi	sp,sp,-16
    80006220:	00813023          	sd	s0,0(sp)
    80006224:	00113423          	sd	ra,8(sp)
    80006228:	01010413          	addi	s0,sp,16
    8000622c:	02059463          	bnez	a1,80006254 <either_copyin+0x38>
    80006230:	00060593          	mv	a1,a2
    80006234:	0006861b          	sext.w	a2,a3
    80006238:	00002097          	auipc	ra,0x2
    8000623c:	c0c080e7          	jalr	-1012(ra) # 80007e44 <__memmove>
    80006240:	00813083          	ld	ra,8(sp)
    80006244:	00013403          	ld	s0,0(sp)
    80006248:	00000513          	li	a0,0
    8000624c:	01010113          	addi	sp,sp,16
    80006250:	00008067          	ret
    80006254:	00003517          	auipc	a0,0x3
    80006258:	28450513          	addi	a0,a0,644 # 800094d8 <CONSOLE_STATUS+0x4c8>
    8000625c:	00001097          	auipc	ra,0x1
    80006260:	8e0080e7          	jalr	-1824(ra) # 80006b3c <panic>

0000000080006264 <trapinit>:
    80006264:	ff010113          	addi	sp,sp,-16
    80006268:	00813423          	sd	s0,8(sp)
    8000626c:	01010413          	addi	s0,sp,16
    80006270:	00813403          	ld	s0,8(sp)
    80006274:	00003597          	auipc	a1,0x3
    80006278:	28c58593          	addi	a1,a1,652 # 80009500 <CONSOLE_STATUS+0x4f0>
    8000627c:	00006517          	auipc	a0,0x6
    80006280:	33450513          	addi	a0,a0,820 # 8000c5b0 <tickslock>
    80006284:	01010113          	addi	sp,sp,16
    80006288:	00001317          	auipc	t1,0x1
    8000628c:	5c030067          	jr	1472(t1) # 80007848 <initlock>

0000000080006290 <trapinithart>:
    80006290:	ff010113          	addi	sp,sp,-16
    80006294:	00813423          	sd	s0,8(sp)
    80006298:	01010413          	addi	s0,sp,16
    8000629c:	00000797          	auipc	a5,0x0
    800062a0:	2f478793          	addi	a5,a5,756 # 80006590 <kernelvec>
    800062a4:	10579073          	csrw	stvec,a5
    800062a8:	00813403          	ld	s0,8(sp)
    800062ac:	01010113          	addi	sp,sp,16
    800062b0:	00008067          	ret

00000000800062b4 <usertrap>:
    800062b4:	ff010113          	addi	sp,sp,-16
    800062b8:	00813423          	sd	s0,8(sp)
    800062bc:	01010413          	addi	s0,sp,16
    800062c0:	00813403          	ld	s0,8(sp)
    800062c4:	01010113          	addi	sp,sp,16
    800062c8:	00008067          	ret

00000000800062cc <usertrapret>:
    800062cc:	ff010113          	addi	sp,sp,-16
    800062d0:	00813423          	sd	s0,8(sp)
    800062d4:	01010413          	addi	s0,sp,16
    800062d8:	00813403          	ld	s0,8(sp)
    800062dc:	01010113          	addi	sp,sp,16
    800062e0:	00008067          	ret

00000000800062e4 <kerneltrap>:
    800062e4:	fe010113          	addi	sp,sp,-32
    800062e8:	00813823          	sd	s0,16(sp)
    800062ec:	00113c23          	sd	ra,24(sp)
    800062f0:	00913423          	sd	s1,8(sp)
    800062f4:	02010413          	addi	s0,sp,32
    800062f8:	142025f3          	csrr	a1,scause
    800062fc:	100027f3          	csrr	a5,sstatus
    80006300:	0027f793          	andi	a5,a5,2
    80006304:	10079c63          	bnez	a5,8000641c <kerneltrap+0x138>
    80006308:	142027f3          	csrr	a5,scause
    8000630c:	0207ce63          	bltz	a5,80006348 <kerneltrap+0x64>
    80006310:	00003517          	auipc	a0,0x3
    80006314:	23850513          	addi	a0,a0,568 # 80009548 <CONSOLE_STATUS+0x538>
    80006318:	00001097          	auipc	ra,0x1
    8000631c:	880080e7          	jalr	-1920(ra) # 80006b98 <__printf>
    80006320:	141025f3          	csrr	a1,sepc
    80006324:	14302673          	csrr	a2,stval
    80006328:	00003517          	auipc	a0,0x3
    8000632c:	23050513          	addi	a0,a0,560 # 80009558 <CONSOLE_STATUS+0x548>
    80006330:	00001097          	auipc	ra,0x1
    80006334:	868080e7          	jalr	-1944(ra) # 80006b98 <__printf>
    80006338:	00003517          	auipc	a0,0x3
    8000633c:	23850513          	addi	a0,a0,568 # 80009570 <CONSOLE_STATUS+0x560>
    80006340:	00000097          	auipc	ra,0x0
    80006344:	7fc080e7          	jalr	2044(ra) # 80006b3c <panic>
    80006348:	0ff7f713          	andi	a4,a5,255
    8000634c:	00900693          	li	a3,9
    80006350:	04d70063          	beq	a4,a3,80006390 <kerneltrap+0xac>
    80006354:	fff00713          	li	a4,-1
    80006358:	03f71713          	slli	a4,a4,0x3f
    8000635c:	00170713          	addi	a4,a4,1
    80006360:	fae798e3          	bne	a5,a4,80006310 <kerneltrap+0x2c>
    80006364:	00000097          	auipc	ra,0x0
    80006368:	e00080e7          	jalr	-512(ra) # 80006164 <cpuid>
    8000636c:	06050663          	beqz	a0,800063d8 <kerneltrap+0xf4>
    80006370:	144027f3          	csrr	a5,sip
    80006374:	ffd7f793          	andi	a5,a5,-3
    80006378:	14479073          	csrw	sip,a5
    8000637c:	01813083          	ld	ra,24(sp)
    80006380:	01013403          	ld	s0,16(sp)
    80006384:	00813483          	ld	s1,8(sp)
    80006388:	02010113          	addi	sp,sp,32
    8000638c:	00008067          	ret
    80006390:	00000097          	auipc	ra,0x0
    80006394:	3c4080e7          	jalr	964(ra) # 80006754 <plic_claim>
    80006398:	00a00793          	li	a5,10
    8000639c:	00050493          	mv	s1,a0
    800063a0:	06f50863          	beq	a0,a5,80006410 <kerneltrap+0x12c>
    800063a4:	fc050ce3          	beqz	a0,8000637c <kerneltrap+0x98>
    800063a8:	00050593          	mv	a1,a0
    800063ac:	00003517          	auipc	a0,0x3
    800063b0:	17c50513          	addi	a0,a0,380 # 80009528 <CONSOLE_STATUS+0x518>
    800063b4:	00000097          	auipc	ra,0x0
    800063b8:	7e4080e7          	jalr	2020(ra) # 80006b98 <__printf>
    800063bc:	01013403          	ld	s0,16(sp)
    800063c0:	01813083          	ld	ra,24(sp)
    800063c4:	00048513          	mv	a0,s1
    800063c8:	00813483          	ld	s1,8(sp)
    800063cc:	02010113          	addi	sp,sp,32
    800063d0:	00000317          	auipc	t1,0x0
    800063d4:	3bc30067          	jr	956(t1) # 8000678c <plic_complete>
    800063d8:	00006517          	auipc	a0,0x6
    800063dc:	1d850513          	addi	a0,a0,472 # 8000c5b0 <tickslock>
    800063e0:	00001097          	auipc	ra,0x1
    800063e4:	48c080e7          	jalr	1164(ra) # 8000786c <acquire>
    800063e8:	00005717          	auipc	a4,0x5
    800063ec:	04c70713          	addi	a4,a4,76 # 8000b434 <ticks>
    800063f0:	00072783          	lw	a5,0(a4)
    800063f4:	00006517          	auipc	a0,0x6
    800063f8:	1bc50513          	addi	a0,a0,444 # 8000c5b0 <tickslock>
    800063fc:	0017879b          	addiw	a5,a5,1
    80006400:	00f72023          	sw	a5,0(a4)
    80006404:	00001097          	auipc	ra,0x1
    80006408:	534080e7          	jalr	1332(ra) # 80007938 <release>
    8000640c:	f65ff06f          	j	80006370 <kerneltrap+0x8c>
    80006410:	00001097          	auipc	ra,0x1
    80006414:	090080e7          	jalr	144(ra) # 800074a0 <uartintr>
    80006418:	fa5ff06f          	j	800063bc <kerneltrap+0xd8>
    8000641c:	00003517          	auipc	a0,0x3
    80006420:	0ec50513          	addi	a0,a0,236 # 80009508 <CONSOLE_STATUS+0x4f8>
    80006424:	00000097          	auipc	ra,0x0
    80006428:	718080e7          	jalr	1816(ra) # 80006b3c <panic>

000000008000642c <clockintr>:
    8000642c:	fe010113          	addi	sp,sp,-32
    80006430:	00813823          	sd	s0,16(sp)
    80006434:	00913423          	sd	s1,8(sp)
    80006438:	00113c23          	sd	ra,24(sp)
    8000643c:	02010413          	addi	s0,sp,32
    80006440:	00006497          	auipc	s1,0x6
    80006444:	17048493          	addi	s1,s1,368 # 8000c5b0 <tickslock>
    80006448:	00048513          	mv	a0,s1
    8000644c:	00001097          	auipc	ra,0x1
    80006450:	420080e7          	jalr	1056(ra) # 8000786c <acquire>
    80006454:	00005717          	auipc	a4,0x5
    80006458:	fe070713          	addi	a4,a4,-32 # 8000b434 <ticks>
    8000645c:	00072783          	lw	a5,0(a4)
    80006460:	01013403          	ld	s0,16(sp)
    80006464:	01813083          	ld	ra,24(sp)
    80006468:	00048513          	mv	a0,s1
    8000646c:	0017879b          	addiw	a5,a5,1
    80006470:	00813483          	ld	s1,8(sp)
    80006474:	00f72023          	sw	a5,0(a4)
    80006478:	02010113          	addi	sp,sp,32
    8000647c:	00001317          	auipc	t1,0x1
    80006480:	4bc30067          	jr	1212(t1) # 80007938 <release>

0000000080006484 <devintr>:
    80006484:	142027f3          	csrr	a5,scause
    80006488:	00000513          	li	a0,0
    8000648c:	0007c463          	bltz	a5,80006494 <devintr+0x10>
    80006490:	00008067          	ret
    80006494:	fe010113          	addi	sp,sp,-32
    80006498:	00813823          	sd	s0,16(sp)
    8000649c:	00113c23          	sd	ra,24(sp)
    800064a0:	00913423          	sd	s1,8(sp)
    800064a4:	02010413          	addi	s0,sp,32
    800064a8:	0ff7f713          	andi	a4,a5,255
    800064ac:	00900693          	li	a3,9
    800064b0:	04d70c63          	beq	a4,a3,80006508 <devintr+0x84>
    800064b4:	fff00713          	li	a4,-1
    800064b8:	03f71713          	slli	a4,a4,0x3f
    800064bc:	00170713          	addi	a4,a4,1
    800064c0:	00e78c63          	beq	a5,a4,800064d8 <devintr+0x54>
    800064c4:	01813083          	ld	ra,24(sp)
    800064c8:	01013403          	ld	s0,16(sp)
    800064cc:	00813483          	ld	s1,8(sp)
    800064d0:	02010113          	addi	sp,sp,32
    800064d4:	00008067          	ret
    800064d8:	00000097          	auipc	ra,0x0
    800064dc:	c8c080e7          	jalr	-884(ra) # 80006164 <cpuid>
    800064e0:	06050663          	beqz	a0,8000654c <devintr+0xc8>
    800064e4:	144027f3          	csrr	a5,sip
    800064e8:	ffd7f793          	andi	a5,a5,-3
    800064ec:	14479073          	csrw	sip,a5
    800064f0:	01813083          	ld	ra,24(sp)
    800064f4:	01013403          	ld	s0,16(sp)
    800064f8:	00813483          	ld	s1,8(sp)
    800064fc:	00200513          	li	a0,2
    80006500:	02010113          	addi	sp,sp,32
    80006504:	00008067          	ret
    80006508:	00000097          	auipc	ra,0x0
    8000650c:	24c080e7          	jalr	588(ra) # 80006754 <plic_claim>
    80006510:	00a00793          	li	a5,10
    80006514:	00050493          	mv	s1,a0
    80006518:	06f50663          	beq	a0,a5,80006584 <devintr+0x100>
    8000651c:	00100513          	li	a0,1
    80006520:	fa0482e3          	beqz	s1,800064c4 <devintr+0x40>
    80006524:	00048593          	mv	a1,s1
    80006528:	00003517          	auipc	a0,0x3
    8000652c:	00050513          	mv	a0,a0
    80006530:	00000097          	auipc	ra,0x0
    80006534:	668080e7          	jalr	1640(ra) # 80006b98 <__printf>
    80006538:	00048513          	mv	a0,s1
    8000653c:	00000097          	auipc	ra,0x0
    80006540:	250080e7          	jalr	592(ra) # 8000678c <plic_complete>
    80006544:	00100513          	li	a0,1
    80006548:	f7dff06f          	j	800064c4 <devintr+0x40>
    8000654c:	00006517          	auipc	a0,0x6
    80006550:	06450513          	addi	a0,a0,100 # 8000c5b0 <tickslock>
    80006554:	00001097          	auipc	ra,0x1
    80006558:	318080e7          	jalr	792(ra) # 8000786c <acquire>
    8000655c:	00005717          	auipc	a4,0x5
    80006560:	ed870713          	addi	a4,a4,-296 # 8000b434 <ticks>
    80006564:	00072783          	lw	a5,0(a4)
    80006568:	00006517          	auipc	a0,0x6
    8000656c:	04850513          	addi	a0,a0,72 # 8000c5b0 <tickslock>
    80006570:	0017879b          	addiw	a5,a5,1
    80006574:	00f72023          	sw	a5,0(a4)
    80006578:	00001097          	auipc	ra,0x1
    8000657c:	3c0080e7          	jalr	960(ra) # 80007938 <release>
    80006580:	f65ff06f          	j	800064e4 <devintr+0x60>
    80006584:	00001097          	auipc	ra,0x1
    80006588:	f1c080e7          	jalr	-228(ra) # 800074a0 <uartintr>
    8000658c:	fadff06f          	j	80006538 <devintr+0xb4>

0000000080006590 <kernelvec>:
    80006590:	f0010113          	addi	sp,sp,-256
    80006594:	00113023          	sd	ra,0(sp)
    80006598:	00213423          	sd	sp,8(sp)
    8000659c:	00313823          	sd	gp,16(sp)
    800065a0:	00413c23          	sd	tp,24(sp)
    800065a4:	02513023          	sd	t0,32(sp)
    800065a8:	02613423          	sd	t1,40(sp)
    800065ac:	02713823          	sd	t2,48(sp)
    800065b0:	02813c23          	sd	s0,56(sp)
    800065b4:	04913023          	sd	s1,64(sp)
    800065b8:	04a13423          	sd	a0,72(sp)
    800065bc:	04b13823          	sd	a1,80(sp)
    800065c0:	04c13c23          	sd	a2,88(sp)
    800065c4:	06d13023          	sd	a3,96(sp)
    800065c8:	06e13423          	sd	a4,104(sp)
    800065cc:	06f13823          	sd	a5,112(sp)
    800065d0:	07013c23          	sd	a6,120(sp)
    800065d4:	09113023          	sd	a7,128(sp)
    800065d8:	09213423          	sd	s2,136(sp)
    800065dc:	09313823          	sd	s3,144(sp)
    800065e0:	09413c23          	sd	s4,152(sp)
    800065e4:	0b513023          	sd	s5,160(sp)
    800065e8:	0b613423          	sd	s6,168(sp)
    800065ec:	0b713823          	sd	s7,176(sp)
    800065f0:	0b813c23          	sd	s8,184(sp)
    800065f4:	0d913023          	sd	s9,192(sp)
    800065f8:	0da13423          	sd	s10,200(sp)
    800065fc:	0db13823          	sd	s11,208(sp)
    80006600:	0dc13c23          	sd	t3,216(sp)
    80006604:	0fd13023          	sd	t4,224(sp)
    80006608:	0fe13423          	sd	t5,232(sp)
    8000660c:	0ff13823          	sd	t6,240(sp)
    80006610:	cd5ff0ef          	jal	ra,800062e4 <kerneltrap>
    80006614:	00013083          	ld	ra,0(sp)
    80006618:	00813103          	ld	sp,8(sp)
    8000661c:	01013183          	ld	gp,16(sp)
    80006620:	02013283          	ld	t0,32(sp)
    80006624:	02813303          	ld	t1,40(sp)
    80006628:	03013383          	ld	t2,48(sp)
    8000662c:	03813403          	ld	s0,56(sp)
    80006630:	04013483          	ld	s1,64(sp)
    80006634:	04813503          	ld	a0,72(sp)
    80006638:	05013583          	ld	a1,80(sp)
    8000663c:	05813603          	ld	a2,88(sp)
    80006640:	06013683          	ld	a3,96(sp)
    80006644:	06813703          	ld	a4,104(sp)
    80006648:	07013783          	ld	a5,112(sp)
    8000664c:	07813803          	ld	a6,120(sp)
    80006650:	08013883          	ld	a7,128(sp)
    80006654:	08813903          	ld	s2,136(sp)
    80006658:	09013983          	ld	s3,144(sp)
    8000665c:	09813a03          	ld	s4,152(sp)
    80006660:	0a013a83          	ld	s5,160(sp)
    80006664:	0a813b03          	ld	s6,168(sp)
    80006668:	0b013b83          	ld	s7,176(sp)
    8000666c:	0b813c03          	ld	s8,184(sp)
    80006670:	0c013c83          	ld	s9,192(sp)
    80006674:	0c813d03          	ld	s10,200(sp)
    80006678:	0d013d83          	ld	s11,208(sp)
    8000667c:	0d813e03          	ld	t3,216(sp)
    80006680:	0e013e83          	ld	t4,224(sp)
    80006684:	0e813f03          	ld	t5,232(sp)
    80006688:	0f013f83          	ld	t6,240(sp)
    8000668c:	10010113          	addi	sp,sp,256
    80006690:	10200073          	sret
    80006694:	00000013          	nop
    80006698:	00000013          	nop
    8000669c:	00000013          	nop

00000000800066a0 <timervec>:
    800066a0:	34051573          	csrrw	a0,mscratch,a0
    800066a4:	00b53023          	sd	a1,0(a0)
    800066a8:	00c53423          	sd	a2,8(a0)
    800066ac:	00d53823          	sd	a3,16(a0)
    800066b0:	01853583          	ld	a1,24(a0)
    800066b4:	02053603          	ld	a2,32(a0)
    800066b8:	0005b683          	ld	a3,0(a1)
    800066bc:	00c686b3          	add	a3,a3,a2
    800066c0:	00d5b023          	sd	a3,0(a1)
    800066c4:	00200593          	li	a1,2
    800066c8:	14459073          	csrw	sip,a1
    800066cc:	01053683          	ld	a3,16(a0)
    800066d0:	00853603          	ld	a2,8(a0)
    800066d4:	00053583          	ld	a1,0(a0)
    800066d8:	34051573          	csrrw	a0,mscratch,a0
    800066dc:	30200073          	mret

00000000800066e0 <plicinit>:
    800066e0:	ff010113          	addi	sp,sp,-16
    800066e4:	00813423          	sd	s0,8(sp)
    800066e8:	01010413          	addi	s0,sp,16
    800066ec:	00813403          	ld	s0,8(sp)
    800066f0:	0c0007b7          	lui	a5,0xc000
    800066f4:	00100713          	li	a4,1
    800066f8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800066fc:	00e7a223          	sw	a4,4(a5)
    80006700:	01010113          	addi	sp,sp,16
    80006704:	00008067          	ret

0000000080006708 <plicinithart>:
    80006708:	ff010113          	addi	sp,sp,-16
    8000670c:	00813023          	sd	s0,0(sp)
    80006710:	00113423          	sd	ra,8(sp)
    80006714:	01010413          	addi	s0,sp,16
    80006718:	00000097          	auipc	ra,0x0
    8000671c:	a4c080e7          	jalr	-1460(ra) # 80006164 <cpuid>
    80006720:	0085171b          	slliw	a4,a0,0x8
    80006724:	0c0027b7          	lui	a5,0xc002
    80006728:	00e787b3          	add	a5,a5,a4
    8000672c:	40200713          	li	a4,1026
    80006730:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006734:	00813083          	ld	ra,8(sp)
    80006738:	00013403          	ld	s0,0(sp)
    8000673c:	00d5151b          	slliw	a0,a0,0xd
    80006740:	0c2017b7          	lui	a5,0xc201
    80006744:	00a78533          	add	a0,a5,a0
    80006748:	00052023          	sw	zero,0(a0)
    8000674c:	01010113          	addi	sp,sp,16
    80006750:	00008067          	ret

0000000080006754 <plic_claim>:
    80006754:	ff010113          	addi	sp,sp,-16
    80006758:	00813023          	sd	s0,0(sp)
    8000675c:	00113423          	sd	ra,8(sp)
    80006760:	01010413          	addi	s0,sp,16
    80006764:	00000097          	auipc	ra,0x0
    80006768:	a00080e7          	jalr	-1536(ra) # 80006164 <cpuid>
    8000676c:	00813083          	ld	ra,8(sp)
    80006770:	00013403          	ld	s0,0(sp)
    80006774:	00d5151b          	slliw	a0,a0,0xd
    80006778:	0c2017b7          	lui	a5,0xc201
    8000677c:	00a78533          	add	a0,a5,a0
    80006780:	00452503          	lw	a0,4(a0)
    80006784:	01010113          	addi	sp,sp,16
    80006788:	00008067          	ret

000000008000678c <plic_complete>:
    8000678c:	fe010113          	addi	sp,sp,-32
    80006790:	00813823          	sd	s0,16(sp)
    80006794:	00913423          	sd	s1,8(sp)
    80006798:	00113c23          	sd	ra,24(sp)
    8000679c:	02010413          	addi	s0,sp,32
    800067a0:	00050493          	mv	s1,a0
    800067a4:	00000097          	auipc	ra,0x0
    800067a8:	9c0080e7          	jalr	-1600(ra) # 80006164 <cpuid>
    800067ac:	01813083          	ld	ra,24(sp)
    800067b0:	01013403          	ld	s0,16(sp)
    800067b4:	00d5179b          	slliw	a5,a0,0xd
    800067b8:	0c201737          	lui	a4,0xc201
    800067bc:	00f707b3          	add	a5,a4,a5
    800067c0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800067c4:	00813483          	ld	s1,8(sp)
    800067c8:	02010113          	addi	sp,sp,32
    800067cc:	00008067          	ret

00000000800067d0 <consolewrite>:
    800067d0:	fb010113          	addi	sp,sp,-80
    800067d4:	04813023          	sd	s0,64(sp)
    800067d8:	04113423          	sd	ra,72(sp)
    800067dc:	02913c23          	sd	s1,56(sp)
    800067e0:	03213823          	sd	s2,48(sp)
    800067e4:	03313423          	sd	s3,40(sp)
    800067e8:	03413023          	sd	s4,32(sp)
    800067ec:	01513c23          	sd	s5,24(sp)
    800067f0:	05010413          	addi	s0,sp,80
    800067f4:	06c05c63          	blez	a2,8000686c <consolewrite+0x9c>
    800067f8:	00060993          	mv	s3,a2
    800067fc:	00050a13          	mv	s4,a0
    80006800:	00058493          	mv	s1,a1
    80006804:	00000913          	li	s2,0
    80006808:	fff00a93          	li	s5,-1
    8000680c:	01c0006f          	j	80006828 <consolewrite+0x58>
    80006810:	fbf44503          	lbu	a0,-65(s0)
    80006814:	0019091b          	addiw	s2,s2,1
    80006818:	00148493          	addi	s1,s1,1
    8000681c:	00001097          	auipc	ra,0x1
    80006820:	a9c080e7          	jalr	-1380(ra) # 800072b8 <uartputc>
    80006824:	03298063          	beq	s3,s2,80006844 <consolewrite+0x74>
    80006828:	00048613          	mv	a2,s1
    8000682c:	00100693          	li	a3,1
    80006830:	000a0593          	mv	a1,s4
    80006834:	fbf40513          	addi	a0,s0,-65
    80006838:	00000097          	auipc	ra,0x0
    8000683c:	9e4080e7          	jalr	-1564(ra) # 8000621c <either_copyin>
    80006840:	fd5518e3          	bne	a0,s5,80006810 <consolewrite+0x40>
    80006844:	04813083          	ld	ra,72(sp)
    80006848:	04013403          	ld	s0,64(sp)
    8000684c:	03813483          	ld	s1,56(sp)
    80006850:	02813983          	ld	s3,40(sp)
    80006854:	02013a03          	ld	s4,32(sp)
    80006858:	01813a83          	ld	s5,24(sp)
    8000685c:	00090513          	mv	a0,s2
    80006860:	03013903          	ld	s2,48(sp)
    80006864:	05010113          	addi	sp,sp,80
    80006868:	00008067          	ret
    8000686c:	00000913          	li	s2,0
    80006870:	fd5ff06f          	j	80006844 <consolewrite+0x74>

0000000080006874 <consoleread>:
    80006874:	f9010113          	addi	sp,sp,-112
    80006878:	06813023          	sd	s0,96(sp)
    8000687c:	04913c23          	sd	s1,88(sp)
    80006880:	05213823          	sd	s2,80(sp)
    80006884:	05313423          	sd	s3,72(sp)
    80006888:	05413023          	sd	s4,64(sp)
    8000688c:	03513c23          	sd	s5,56(sp)
    80006890:	03613823          	sd	s6,48(sp)
    80006894:	03713423          	sd	s7,40(sp)
    80006898:	03813023          	sd	s8,32(sp)
    8000689c:	06113423          	sd	ra,104(sp)
    800068a0:	01913c23          	sd	s9,24(sp)
    800068a4:	07010413          	addi	s0,sp,112
    800068a8:	00060b93          	mv	s7,a2
    800068ac:	00050913          	mv	s2,a0
    800068b0:	00058c13          	mv	s8,a1
    800068b4:	00060b1b          	sext.w	s6,a2
    800068b8:	00006497          	auipc	s1,0x6
    800068bc:	d2048493          	addi	s1,s1,-736 # 8000c5d8 <cons>
    800068c0:	00400993          	li	s3,4
    800068c4:	fff00a13          	li	s4,-1
    800068c8:	00a00a93          	li	s5,10
    800068cc:	05705e63          	blez	s7,80006928 <consoleread+0xb4>
    800068d0:	09c4a703          	lw	a4,156(s1)
    800068d4:	0984a783          	lw	a5,152(s1)
    800068d8:	0007071b          	sext.w	a4,a4
    800068dc:	08e78463          	beq	a5,a4,80006964 <consoleread+0xf0>
    800068e0:	07f7f713          	andi	a4,a5,127
    800068e4:	00e48733          	add	a4,s1,a4
    800068e8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800068ec:	0017869b          	addiw	a3,a5,1
    800068f0:	08d4ac23          	sw	a3,152(s1)
    800068f4:	00070c9b          	sext.w	s9,a4
    800068f8:	0b370663          	beq	a4,s3,800069a4 <consoleread+0x130>
    800068fc:	00100693          	li	a3,1
    80006900:	f9f40613          	addi	a2,s0,-97
    80006904:	000c0593          	mv	a1,s8
    80006908:	00090513          	mv	a0,s2
    8000690c:	f8e40fa3          	sb	a4,-97(s0)
    80006910:	00000097          	auipc	ra,0x0
    80006914:	8c0080e7          	jalr	-1856(ra) # 800061d0 <either_copyout>
    80006918:	01450863          	beq	a0,s4,80006928 <consoleread+0xb4>
    8000691c:	001c0c13          	addi	s8,s8,1
    80006920:	fffb8b9b          	addiw	s7,s7,-1
    80006924:	fb5c94e3          	bne	s9,s5,800068cc <consoleread+0x58>
    80006928:	000b851b          	sext.w	a0,s7
    8000692c:	06813083          	ld	ra,104(sp)
    80006930:	06013403          	ld	s0,96(sp)
    80006934:	05813483          	ld	s1,88(sp)
    80006938:	05013903          	ld	s2,80(sp)
    8000693c:	04813983          	ld	s3,72(sp)
    80006940:	04013a03          	ld	s4,64(sp)
    80006944:	03813a83          	ld	s5,56(sp)
    80006948:	02813b83          	ld	s7,40(sp)
    8000694c:	02013c03          	ld	s8,32(sp)
    80006950:	01813c83          	ld	s9,24(sp)
    80006954:	40ab053b          	subw	a0,s6,a0
    80006958:	03013b03          	ld	s6,48(sp)
    8000695c:	07010113          	addi	sp,sp,112
    80006960:	00008067          	ret
    80006964:	00001097          	auipc	ra,0x1
    80006968:	1d8080e7          	jalr	472(ra) # 80007b3c <push_on>
    8000696c:	0984a703          	lw	a4,152(s1)
    80006970:	09c4a783          	lw	a5,156(s1)
    80006974:	0007879b          	sext.w	a5,a5
    80006978:	fef70ce3          	beq	a4,a5,80006970 <consoleread+0xfc>
    8000697c:	00001097          	auipc	ra,0x1
    80006980:	234080e7          	jalr	564(ra) # 80007bb0 <pop_on>
    80006984:	0984a783          	lw	a5,152(s1)
    80006988:	07f7f713          	andi	a4,a5,127
    8000698c:	00e48733          	add	a4,s1,a4
    80006990:	01874703          	lbu	a4,24(a4)
    80006994:	0017869b          	addiw	a3,a5,1
    80006998:	08d4ac23          	sw	a3,152(s1)
    8000699c:	00070c9b          	sext.w	s9,a4
    800069a0:	f5371ee3          	bne	a4,s3,800068fc <consoleread+0x88>
    800069a4:	000b851b          	sext.w	a0,s7
    800069a8:	f96bf2e3          	bgeu	s7,s6,8000692c <consoleread+0xb8>
    800069ac:	08f4ac23          	sw	a5,152(s1)
    800069b0:	f7dff06f          	j	8000692c <consoleread+0xb8>

00000000800069b4 <consputc>:
    800069b4:	10000793          	li	a5,256
    800069b8:	00f50663          	beq	a0,a5,800069c4 <consputc+0x10>
    800069bc:	00001317          	auipc	t1,0x1
    800069c0:	9f430067          	jr	-1548(t1) # 800073b0 <uartputc_sync>
    800069c4:	ff010113          	addi	sp,sp,-16
    800069c8:	00113423          	sd	ra,8(sp)
    800069cc:	00813023          	sd	s0,0(sp)
    800069d0:	01010413          	addi	s0,sp,16
    800069d4:	00800513          	li	a0,8
    800069d8:	00001097          	auipc	ra,0x1
    800069dc:	9d8080e7          	jalr	-1576(ra) # 800073b0 <uartputc_sync>
    800069e0:	02000513          	li	a0,32
    800069e4:	00001097          	auipc	ra,0x1
    800069e8:	9cc080e7          	jalr	-1588(ra) # 800073b0 <uartputc_sync>
    800069ec:	00013403          	ld	s0,0(sp)
    800069f0:	00813083          	ld	ra,8(sp)
    800069f4:	00800513          	li	a0,8
    800069f8:	01010113          	addi	sp,sp,16
    800069fc:	00001317          	auipc	t1,0x1
    80006a00:	9b430067          	jr	-1612(t1) # 800073b0 <uartputc_sync>

0000000080006a04 <consoleintr>:
    80006a04:	fe010113          	addi	sp,sp,-32
    80006a08:	00813823          	sd	s0,16(sp)
    80006a0c:	00913423          	sd	s1,8(sp)
    80006a10:	01213023          	sd	s2,0(sp)
    80006a14:	00113c23          	sd	ra,24(sp)
    80006a18:	02010413          	addi	s0,sp,32
    80006a1c:	00006917          	auipc	s2,0x6
    80006a20:	bbc90913          	addi	s2,s2,-1092 # 8000c5d8 <cons>
    80006a24:	00050493          	mv	s1,a0
    80006a28:	00090513          	mv	a0,s2
    80006a2c:	00001097          	auipc	ra,0x1
    80006a30:	e40080e7          	jalr	-448(ra) # 8000786c <acquire>
    80006a34:	02048c63          	beqz	s1,80006a6c <consoleintr+0x68>
    80006a38:	0a092783          	lw	a5,160(s2)
    80006a3c:	09892703          	lw	a4,152(s2)
    80006a40:	07f00693          	li	a3,127
    80006a44:	40e7873b          	subw	a4,a5,a4
    80006a48:	02e6e263          	bltu	a3,a4,80006a6c <consoleintr+0x68>
    80006a4c:	00d00713          	li	a4,13
    80006a50:	04e48063          	beq	s1,a4,80006a90 <consoleintr+0x8c>
    80006a54:	07f7f713          	andi	a4,a5,127
    80006a58:	00e90733          	add	a4,s2,a4
    80006a5c:	0017879b          	addiw	a5,a5,1
    80006a60:	0af92023          	sw	a5,160(s2)
    80006a64:	00970c23          	sb	s1,24(a4)
    80006a68:	08f92e23          	sw	a5,156(s2)
    80006a6c:	01013403          	ld	s0,16(sp)
    80006a70:	01813083          	ld	ra,24(sp)
    80006a74:	00813483          	ld	s1,8(sp)
    80006a78:	00013903          	ld	s2,0(sp)
    80006a7c:	00006517          	auipc	a0,0x6
    80006a80:	b5c50513          	addi	a0,a0,-1188 # 8000c5d8 <cons>
    80006a84:	02010113          	addi	sp,sp,32
    80006a88:	00001317          	auipc	t1,0x1
    80006a8c:	eb030067          	jr	-336(t1) # 80007938 <release>
    80006a90:	00a00493          	li	s1,10
    80006a94:	fc1ff06f          	j	80006a54 <consoleintr+0x50>

0000000080006a98 <consoleinit>:
    80006a98:	fe010113          	addi	sp,sp,-32
    80006a9c:	00113c23          	sd	ra,24(sp)
    80006aa0:	00813823          	sd	s0,16(sp)
    80006aa4:	00913423          	sd	s1,8(sp)
    80006aa8:	02010413          	addi	s0,sp,32
    80006aac:	00006497          	auipc	s1,0x6
    80006ab0:	b2c48493          	addi	s1,s1,-1236 # 8000c5d8 <cons>
    80006ab4:	00048513          	mv	a0,s1
    80006ab8:	00003597          	auipc	a1,0x3
    80006abc:	ac858593          	addi	a1,a1,-1336 # 80009580 <CONSOLE_STATUS+0x570>
    80006ac0:	00001097          	auipc	ra,0x1
    80006ac4:	d88080e7          	jalr	-632(ra) # 80007848 <initlock>
    80006ac8:	00000097          	auipc	ra,0x0
    80006acc:	7ac080e7          	jalr	1964(ra) # 80007274 <uartinit>
    80006ad0:	01813083          	ld	ra,24(sp)
    80006ad4:	01013403          	ld	s0,16(sp)
    80006ad8:	00000797          	auipc	a5,0x0
    80006adc:	d9c78793          	addi	a5,a5,-612 # 80006874 <consoleread>
    80006ae0:	0af4bc23          	sd	a5,184(s1)
    80006ae4:	00000797          	auipc	a5,0x0
    80006ae8:	cec78793          	addi	a5,a5,-788 # 800067d0 <consolewrite>
    80006aec:	0cf4b023          	sd	a5,192(s1)
    80006af0:	00813483          	ld	s1,8(sp)
    80006af4:	02010113          	addi	sp,sp,32
    80006af8:	00008067          	ret

0000000080006afc <console_read>:
    80006afc:	ff010113          	addi	sp,sp,-16
    80006b00:	00813423          	sd	s0,8(sp)
    80006b04:	01010413          	addi	s0,sp,16
    80006b08:	00813403          	ld	s0,8(sp)
    80006b0c:	00006317          	auipc	t1,0x6
    80006b10:	b8433303          	ld	t1,-1148(t1) # 8000c690 <devsw+0x10>
    80006b14:	01010113          	addi	sp,sp,16
    80006b18:	00030067          	jr	t1

0000000080006b1c <console_write>:
    80006b1c:	ff010113          	addi	sp,sp,-16
    80006b20:	00813423          	sd	s0,8(sp)
    80006b24:	01010413          	addi	s0,sp,16
    80006b28:	00813403          	ld	s0,8(sp)
    80006b2c:	00006317          	auipc	t1,0x6
    80006b30:	b6c33303          	ld	t1,-1172(t1) # 8000c698 <devsw+0x18>
    80006b34:	01010113          	addi	sp,sp,16
    80006b38:	00030067          	jr	t1

0000000080006b3c <panic>:
    80006b3c:	fe010113          	addi	sp,sp,-32
    80006b40:	00113c23          	sd	ra,24(sp)
    80006b44:	00813823          	sd	s0,16(sp)
    80006b48:	00913423          	sd	s1,8(sp)
    80006b4c:	02010413          	addi	s0,sp,32
    80006b50:	00050493          	mv	s1,a0
    80006b54:	00003517          	auipc	a0,0x3
    80006b58:	a3450513          	addi	a0,a0,-1484 # 80009588 <CONSOLE_STATUS+0x578>
    80006b5c:	00006797          	auipc	a5,0x6
    80006b60:	bc07ae23          	sw	zero,-1060(a5) # 8000c738 <pr+0x18>
    80006b64:	00000097          	auipc	ra,0x0
    80006b68:	034080e7          	jalr	52(ra) # 80006b98 <__printf>
    80006b6c:	00048513          	mv	a0,s1
    80006b70:	00000097          	auipc	ra,0x0
    80006b74:	028080e7          	jalr	40(ra) # 80006b98 <__printf>
    80006b78:	00003517          	auipc	a0,0x3
    80006b7c:	81850513          	addi	a0,a0,-2024 # 80009390 <CONSOLE_STATUS+0x380>
    80006b80:	00000097          	auipc	ra,0x0
    80006b84:	018080e7          	jalr	24(ra) # 80006b98 <__printf>
    80006b88:	00100793          	li	a5,1
    80006b8c:	00005717          	auipc	a4,0x5
    80006b90:	8af72623          	sw	a5,-1876(a4) # 8000b438 <panicked>
    80006b94:	0000006f          	j	80006b94 <panic+0x58>

0000000080006b98 <__printf>:
    80006b98:	f3010113          	addi	sp,sp,-208
    80006b9c:	08813023          	sd	s0,128(sp)
    80006ba0:	07313423          	sd	s3,104(sp)
    80006ba4:	09010413          	addi	s0,sp,144
    80006ba8:	05813023          	sd	s8,64(sp)
    80006bac:	08113423          	sd	ra,136(sp)
    80006bb0:	06913c23          	sd	s1,120(sp)
    80006bb4:	07213823          	sd	s2,112(sp)
    80006bb8:	07413023          	sd	s4,96(sp)
    80006bbc:	05513c23          	sd	s5,88(sp)
    80006bc0:	05613823          	sd	s6,80(sp)
    80006bc4:	05713423          	sd	s7,72(sp)
    80006bc8:	03913c23          	sd	s9,56(sp)
    80006bcc:	03a13823          	sd	s10,48(sp)
    80006bd0:	03b13423          	sd	s11,40(sp)
    80006bd4:	00006317          	auipc	t1,0x6
    80006bd8:	b4c30313          	addi	t1,t1,-1204 # 8000c720 <pr>
    80006bdc:	01832c03          	lw	s8,24(t1)
    80006be0:	00b43423          	sd	a1,8(s0)
    80006be4:	00c43823          	sd	a2,16(s0)
    80006be8:	00d43c23          	sd	a3,24(s0)
    80006bec:	02e43023          	sd	a4,32(s0)
    80006bf0:	02f43423          	sd	a5,40(s0)
    80006bf4:	03043823          	sd	a6,48(s0)
    80006bf8:	03143c23          	sd	a7,56(s0)
    80006bfc:	00050993          	mv	s3,a0
    80006c00:	4a0c1663          	bnez	s8,800070ac <__printf+0x514>
    80006c04:	60098c63          	beqz	s3,8000721c <__printf+0x684>
    80006c08:	0009c503          	lbu	a0,0(s3)
    80006c0c:	00840793          	addi	a5,s0,8
    80006c10:	f6f43c23          	sd	a5,-136(s0)
    80006c14:	00000493          	li	s1,0
    80006c18:	22050063          	beqz	a0,80006e38 <__printf+0x2a0>
    80006c1c:	00002a37          	lui	s4,0x2
    80006c20:	00018ab7          	lui	s5,0x18
    80006c24:	000f4b37          	lui	s6,0xf4
    80006c28:	00989bb7          	lui	s7,0x989
    80006c2c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006c30:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006c34:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006c38:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006c3c:	00148c9b          	addiw	s9,s1,1
    80006c40:	02500793          	li	a5,37
    80006c44:	01998933          	add	s2,s3,s9
    80006c48:	38f51263          	bne	a0,a5,80006fcc <__printf+0x434>
    80006c4c:	00094783          	lbu	a5,0(s2)
    80006c50:	00078c9b          	sext.w	s9,a5
    80006c54:	1e078263          	beqz	a5,80006e38 <__printf+0x2a0>
    80006c58:	0024849b          	addiw	s1,s1,2
    80006c5c:	07000713          	li	a4,112
    80006c60:	00998933          	add	s2,s3,s1
    80006c64:	38e78a63          	beq	a5,a4,80006ff8 <__printf+0x460>
    80006c68:	20f76863          	bltu	a4,a5,80006e78 <__printf+0x2e0>
    80006c6c:	42a78863          	beq	a5,a0,8000709c <__printf+0x504>
    80006c70:	06400713          	li	a4,100
    80006c74:	40e79663          	bne	a5,a4,80007080 <__printf+0x4e8>
    80006c78:	f7843783          	ld	a5,-136(s0)
    80006c7c:	0007a603          	lw	a2,0(a5)
    80006c80:	00878793          	addi	a5,a5,8
    80006c84:	f6f43c23          	sd	a5,-136(s0)
    80006c88:	42064a63          	bltz	a2,800070bc <__printf+0x524>
    80006c8c:	00a00713          	li	a4,10
    80006c90:	02e677bb          	remuw	a5,a2,a4
    80006c94:	00003d97          	auipc	s11,0x3
    80006c98:	91cd8d93          	addi	s11,s11,-1764 # 800095b0 <digits>
    80006c9c:	00900593          	li	a1,9
    80006ca0:	0006051b          	sext.w	a0,a2
    80006ca4:	00000c93          	li	s9,0
    80006ca8:	02079793          	slli	a5,a5,0x20
    80006cac:	0207d793          	srli	a5,a5,0x20
    80006cb0:	00fd87b3          	add	a5,s11,a5
    80006cb4:	0007c783          	lbu	a5,0(a5)
    80006cb8:	02e656bb          	divuw	a3,a2,a4
    80006cbc:	f8f40023          	sb	a5,-128(s0)
    80006cc0:	14c5d863          	bge	a1,a2,80006e10 <__printf+0x278>
    80006cc4:	06300593          	li	a1,99
    80006cc8:	00100c93          	li	s9,1
    80006ccc:	02e6f7bb          	remuw	a5,a3,a4
    80006cd0:	02079793          	slli	a5,a5,0x20
    80006cd4:	0207d793          	srli	a5,a5,0x20
    80006cd8:	00fd87b3          	add	a5,s11,a5
    80006cdc:	0007c783          	lbu	a5,0(a5)
    80006ce0:	02e6d73b          	divuw	a4,a3,a4
    80006ce4:	f8f400a3          	sb	a5,-127(s0)
    80006ce8:	12a5f463          	bgeu	a1,a0,80006e10 <__printf+0x278>
    80006cec:	00a00693          	li	a3,10
    80006cf0:	00900593          	li	a1,9
    80006cf4:	02d777bb          	remuw	a5,a4,a3
    80006cf8:	02079793          	slli	a5,a5,0x20
    80006cfc:	0207d793          	srli	a5,a5,0x20
    80006d00:	00fd87b3          	add	a5,s11,a5
    80006d04:	0007c503          	lbu	a0,0(a5)
    80006d08:	02d757bb          	divuw	a5,a4,a3
    80006d0c:	f8a40123          	sb	a0,-126(s0)
    80006d10:	48e5f263          	bgeu	a1,a4,80007194 <__printf+0x5fc>
    80006d14:	06300513          	li	a0,99
    80006d18:	02d7f5bb          	remuw	a1,a5,a3
    80006d1c:	02059593          	slli	a1,a1,0x20
    80006d20:	0205d593          	srli	a1,a1,0x20
    80006d24:	00bd85b3          	add	a1,s11,a1
    80006d28:	0005c583          	lbu	a1,0(a1)
    80006d2c:	02d7d7bb          	divuw	a5,a5,a3
    80006d30:	f8b401a3          	sb	a1,-125(s0)
    80006d34:	48e57263          	bgeu	a0,a4,800071b8 <__printf+0x620>
    80006d38:	3e700513          	li	a0,999
    80006d3c:	02d7f5bb          	remuw	a1,a5,a3
    80006d40:	02059593          	slli	a1,a1,0x20
    80006d44:	0205d593          	srli	a1,a1,0x20
    80006d48:	00bd85b3          	add	a1,s11,a1
    80006d4c:	0005c583          	lbu	a1,0(a1)
    80006d50:	02d7d7bb          	divuw	a5,a5,a3
    80006d54:	f8b40223          	sb	a1,-124(s0)
    80006d58:	46e57663          	bgeu	a0,a4,800071c4 <__printf+0x62c>
    80006d5c:	02d7f5bb          	remuw	a1,a5,a3
    80006d60:	02059593          	slli	a1,a1,0x20
    80006d64:	0205d593          	srli	a1,a1,0x20
    80006d68:	00bd85b3          	add	a1,s11,a1
    80006d6c:	0005c583          	lbu	a1,0(a1)
    80006d70:	02d7d7bb          	divuw	a5,a5,a3
    80006d74:	f8b402a3          	sb	a1,-123(s0)
    80006d78:	46ea7863          	bgeu	s4,a4,800071e8 <__printf+0x650>
    80006d7c:	02d7f5bb          	remuw	a1,a5,a3
    80006d80:	02059593          	slli	a1,a1,0x20
    80006d84:	0205d593          	srli	a1,a1,0x20
    80006d88:	00bd85b3          	add	a1,s11,a1
    80006d8c:	0005c583          	lbu	a1,0(a1)
    80006d90:	02d7d7bb          	divuw	a5,a5,a3
    80006d94:	f8b40323          	sb	a1,-122(s0)
    80006d98:	3eeaf863          	bgeu	s5,a4,80007188 <__printf+0x5f0>
    80006d9c:	02d7f5bb          	remuw	a1,a5,a3
    80006da0:	02059593          	slli	a1,a1,0x20
    80006da4:	0205d593          	srli	a1,a1,0x20
    80006da8:	00bd85b3          	add	a1,s11,a1
    80006dac:	0005c583          	lbu	a1,0(a1)
    80006db0:	02d7d7bb          	divuw	a5,a5,a3
    80006db4:	f8b403a3          	sb	a1,-121(s0)
    80006db8:	42eb7e63          	bgeu	s6,a4,800071f4 <__printf+0x65c>
    80006dbc:	02d7f5bb          	remuw	a1,a5,a3
    80006dc0:	02059593          	slli	a1,a1,0x20
    80006dc4:	0205d593          	srli	a1,a1,0x20
    80006dc8:	00bd85b3          	add	a1,s11,a1
    80006dcc:	0005c583          	lbu	a1,0(a1)
    80006dd0:	02d7d7bb          	divuw	a5,a5,a3
    80006dd4:	f8b40423          	sb	a1,-120(s0)
    80006dd8:	42ebfc63          	bgeu	s7,a4,80007210 <__printf+0x678>
    80006ddc:	02079793          	slli	a5,a5,0x20
    80006de0:	0207d793          	srli	a5,a5,0x20
    80006de4:	00fd8db3          	add	s11,s11,a5
    80006de8:	000dc703          	lbu	a4,0(s11)
    80006dec:	00a00793          	li	a5,10
    80006df0:	00900c93          	li	s9,9
    80006df4:	f8e404a3          	sb	a4,-119(s0)
    80006df8:	00065c63          	bgez	a2,80006e10 <__printf+0x278>
    80006dfc:	f9040713          	addi	a4,s0,-112
    80006e00:	00f70733          	add	a4,a4,a5
    80006e04:	02d00693          	li	a3,45
    80006e08:	fed70823          	sb	a3,-16(a4)
    80006e0c:	00078c93          	mv	s9,a5
    80006e10:	f8040793          	addi	a5,s0,-128
    80006e14:	01978cb3          	add	s9,a5,s9
    80006e18:	f7f40d13          	addi	s10,s0,-129
    80006e1c:	000cc503          	lbu	a0,0(s9)
    80006e20:	fffc8c93          	addi	s9,s9,-1
    80006e24:	00000097          	auipc	ra,0x0
    80006e28:	b90080e7          	jalr	-1136(ra) # 800069b4 <consputc>
    80006e2c:	ffac98e3          	bne	s9,s10,80006e1c <__printf+0x284>
    80006e30:	00094503          	lbu	a0,0(s2)
    80006e34:	e00514e3          	bnez	a0,80006c3c <__printf+0xa4>
    80006e38:	1a0c1663          	bnez	s8,80006fe4 <__printf+0x44c>
    80006e3c:	08813083          	ld	ra,136(sp)
    80006e40:	08013403          	ld	s0,128(sp)
    80006e44:	07813483          	ld	s1,120(sp)
    80006e48:	07013903          	ld	s2,112(sp)
    80006e4c:	06813983          	ld	s3,104(sp)
    80006e50:	06013a03          	ld	s4,96(sp)
    80006e54:	05813a83          	ld	s5,88(sp)
    80006e58:	05013b03          	ld	s6,80(sp)
    80006e5c:	04813b83          	ld	s7,72(sp)
    80006e60:	04013c03          	ld	s8,64(sp)
    80006e64:	03813c83          	ld	s9,56(sp)
    80006e68:	03013d03          	ld	s10,48(sp)
    80006e6c:	02813d83          	ld	s11,40(sp)
    80006e70:	0d010113          	addi	sp,sp,208
    80006e74:	00008067          	ret
    80006e78:	07300713          	li	a4,115
    80006e7c:	1ce78a63          	beq	a5,a4,80007050 <__printf+0x4b8>
    80006e80:	07800713          	li	a4,120
    80006e84:	1ee79e63          	bne	a5,a4,80007080 <__printf+0x4e8>
    80006e88:	f7843783          	ld	a5,-136(s0)
    80006e8c:	0007a703          	lw	a4,0(a5)
    80006e90:	00878793          	addi	a5,a5,8
    80006e94:	f6f43c23          	sd	a5,-136(s0)
    80006e98:	28074263          	bltz	a4,8000711c <__printf+0x584>
    80006e9c:	00002d97          	auipc	s11,0x2
    80006ea0:	714d8d93          	addi	s11,s11,1812 # 800095b0 <digits>
    80006ea4:	00f77793          	andi	a5,a4,15
    80006ea8:	00fd87b3          	add	a5,s11,a5
    80006eac:	0007c683          	lbu	a3,0(a5)
    80006eb0:	00f00613          	li	a2,15
    80006eb4:	0007079b          	sext.w	a5,a4
    80006eb8:	f8d40023          	sb	a3,-128(s0)
    80006ebc:	0047559b          	srliw	a1,a4,0x4
    80006ec0:	0047569b          	srliw	a3,a4,0x4
    80006ec4:	00000c93          	li	s9,0
    80006ec8:	0ee65063          	bge	a2,a4,80006fa8 <__printf+0x410>
    80006ecc:	00f6f693          	andi	a3,a3,15
    80006ed0:	00dd86b3          	add	a3,s11,a3
    80006ed4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006ed8:	0087d79b          	srliw	a5,a5,0x8
    80006edc:	00100c93          	li	s9,1
    80006ee0:	f8d400a3          	sb	a3,-127(s0)
    80006ee4:	0cb67263          	bgeu	a2,a1,80006fa8 <__printf+0x410>
    80006ee8:	00f7f693          	andi	a3,a5,15
    80006eec:	00dd86b3          	add	a3,s11,a3
    80006ef0:	0006c583          	lbu	a1,0(a3)
    80006ef4:	00f00613          	li	a2,15
    80006ef8:	0047d69b          	srliw	a3,a5,0x4
    80006efc:	f8b40123          	sb	a1,-126(s0)
    80006f00:	0047d593          	srli	a1,a5,0x4
    80006f04:	28f67e63          	bgeu	a2,a5,800071a0 <__printf+0x608>
    80006f08:	00f6f693          	andi	a3,a3,15
    80006f0c:	00dd86b3          	add	a3,s11,a3
    80006f10:	0006c503          	lbu	a0,0(a3)
    80006f14:	0087d813          	srli	a6,a5,0x8
    80006f18:	0087d69b          	srliw	a3,a5,0x8
    80006f1c:	f8a401a3          	sb	a0,-125(s0)
    80006f20:	28b67663          	bgeu	a2,a1,800071ac <__printf+0x614>
    80006f24:	00f6f693          	andi	a3,a3,15
    80006f28:	00dd86b3          	add	a3,s11,a3
    80006f2c:	0006c583          	lbu	a1,0(a3)
    80006f30:	00c7d513          	srli	a0,a5,0xc
    80006f34:	00c7d69b          	srliw	a3,a5,0xc
    80006f38:	f8b40223          	sb	a1,-124(s0)
    80006f3c:	29067a63          	bgeu	a2,a6,800071d0 <__printf+0x638>
    80006f40:	00f6f693          	andi	a3,a3,15
    80006f44:	00dd86b3          	add	a3,s11,a3
    80006f48:	0006c583          	lbu	a1,0(a3)
    80006f4c:	0107d813          	srli	a6,a5,0x10
    80006f50:	0107d69b          	srliw	a3,a5,0x10
    80006f54:	f8b402a3          	sb	a1,-123(s0)
    80006f58:	28a67263          	bgeu	a2,a0,800071dc <__printf+0x644>
    80006f5c:	00f6f693          	andi	a3,a3,15
    80006f60:	00dd86b3          	add	a3,s11,a3
    80006f64:	0006c683          	lbu	a3,0(a3)
    80006f68:	0147d79b          	srliw	a5,a5,0x14
    80006f6c:	f8d40323          	sb	a3,-122(s0)
    80006f70:	21067663          	bgeu	a2,a6,8000717c <__printf+0x5e4>
    80006f74:	02079793          	slli	a5,a5,0x20
    80006f78:	0207d793          	srli	a5,a5,0x20
    80006f7c:	00fd8db3          	add	s11,s11,a5
    80006f80:	000dc683          	lbu	a3,0(s11)
    80006f84:	00800793          	li	a5,8
    80006f88:	00700c93          	li	s9,7
    80006f8c:	f8d403a3          	sb	a3,-121(s0)
    80006f90:	00075c63          	bgez	a4,80006fa8 <__printf+0x410>
    80006f94:	f9040713          	addi	a4,s0,-112
    80006f98:	00f70733          	add	a4,a4,a5
    80006f9c:	02d00693          	li	a3,45
    80006fa0:	fed70823          	sb	a3,-16(a4)
    80006fa4:	00078c93          	mv	s9,a5
    80006fa8:	f8040793          	addi	a5,s0,-128
    80006fac:	01978cb3          	add	s9,a5,s9
    80006fb0:	f7f40d13          	addi	s10,s0,-129
    80006fb4:	000cc503          	lbu	a0,0(s9)
    80006fb8:	fffc8c93          	addi	s9,s9,-1
    80006fbc:	00000097          	auipc	ra,0x0
    80006fc0:	9f8080e7          	jalr	-1544(ra) # 800069b4 <consputc>
    80006fc4:	ff9d18e3          	bne	s10,s9,80006fb4 <__printf+0x41c>
    80006fc8:	0100006f          	j	80006fd8 <__printf+0x440>
    80006fcc:	00000097          	auipc	ra,0x0
    80006fd0:	9e8080e7          	jalr	-1560(ra) # 800069b4 <consputc>
    80006fd4:	000c8493          	mv	s1,s9
    80006fd8:	00094503          	lbu	a0,0(s2)
    80006fdc:	c60510e3          	bnez	a0,80006c3c <__printf+0xa4>
    80006fe0:	e40c0ee3          	beqz	s8,80006e3c <__printf+0x2a4>
    80006fe4:	00005517          	auipc	a0,0x5
    80006fe8:	73c50513          	addi	a0,a0,1852 # 8000c720 <pr>
    80006fec:	00001097          	auipc	ra,0x1
    80006ff0:	94c080e7          	jalr	-1716(ra) # 80007938 <release>
    80006ff4:	e49ff06f          	j	80006e3c <__printf+0x2a4>
    80006ff8:	f7843783          	ld	a5,-136(s0)
    80006ffc:	03000513          	li	a0,48
    80007000:	01000d13          	li	s10,16
    80007004:	00878713          	addi	a4,a5,8
    80007008:	0007bc83          	ld	s9,0(a5)
    8000700c:	f6e43c23          	sd	a4,-136(s0)
    80007010:	00000097          	auipc	ra,0x0
    80007014:	9a4080e7          	jalr	-1628(ra) # 800069b4 <consputc>
    80007018:	07800513          	li	a0,120
    8000701c:	00000097          	auipc	ra,0x0
    80007020:	998080e7          	jalr	-1640(ra) # 800069b4 <consputc>
    80007024:	00002d97          	auipc	s11,0x2
    80007028:	58cd8d93          	addi	s11,s11,1420 # 800095b0 <digits>
    8000702c:	03ccd793          	srli	a5,s9,0x3c
    80007030:	00fd87b3          	add	a5,s11,a5
    80007034:	0007c503          	lbu	a0,0(a5)
    80007038:	fffd0d1b          	addiw	s10,s10,-1
    8000703c:	004c9c93          	slli	s9,s9,0x4
    80007040:	00000097          	auipc	ra,0x0
    80007044:	974080e7          	jalr	-1676(ra) # 800069b4 <consputc>
    80007048:	fe0d12e3          	bnez	s10,8000702c <__printf+0x494>
    8000704c:	f8dff06f          	j	80006fd8 <__printf+0x440>
    80007050:	f7843783          	ld	a5,-136(s0)
    80007054:	0007bc83          	ld	s9,0(a5)
    80007058:	00878793          	addi	a5,a5,8
    8000705c:	f6f43c23          	sd	a5,-136(s0)
    80007060:	000c9a63          	bnez	s9,80007074 <__printf+0x4dc>
    80007064:	1080006f          	j	8000716c <__printf+0x5d4>
    80007068:	001c8c93          	addi	s9,s9,1
    8000706c:	00000097          	auipc	ra,0x0
    80007070:	948080e7          	jalr	-1720(ra) # 800069b4 <consputc>
    80007074:	000cc503          	lbu	a0,0(s9)
    80007078:	fe0518e3          	bnez	a0,80007068 <__printf+0x4d0>
    8000707c:	f5dff06f          	j	80006fd8 <__printf+0x440>
    80007080:	02500513          	li	a0,37
    80007084:	00000097          	auipc	ra,0x0
    80007088:	930080e7          	jalr	-1744(ra) # 800069b4 <consputc>
    8000708c:	000c8513          	mv	a0,s9
    80007090:	00000097          	auipc	ra,0x0
    80007094:	924080e7          	jalr	-1756(ra) # 800069b4 <consputc>
    80007098:	f41ff06f          	j	80006fd8 <__printf+0x440>
    8000709c:	02500513          	li	a0,37
    800070a0:	00000097          	auipc	ra,0x0
    800070a4:	914080e7          	jalr	-1772(ra) # 800069b4 <consputc>
    800070a8:	f31ff06f          	j	80006fd8 <__printf+0x440>
    800070ac:	00030513          	mv	a0,t1
    800070b0:	00000097          	auipc	ra,0x0
    800070b4:	7bc080e7          	jalr	1980(ra) # 8000786c <acquire>
    800070b8:	b4dff06f          	j	80006c04 <__printf+0x6c>
    800070bc:	40c0053b          	negw	a0,a2
    800070c0:	00a00713          	li	a4,10
    800070c4:	02e576bb          	remuw	a3,a0,a4
    800070c8:	00002d97          	auipc	s11,0x2
    800070cc:	4e8d8d93          	addi	s11,s11,1256 # 800095b0 <digits>
    800070d0:	ff700593          	li	a1,-9
    800070d4:	02069693          	slli	a3,a3,0x20
    800070d8:	0206d693          	srli	a3,a3,0x20
    800070dc:	00dd86b3          	add	a3,s11,a3
    800070e0:	0006c683          	lbu	a3,0(a3)
    800070e4:	02e557bb          	divuw	a5,a0,a4
    800070e8:	f8d40023          	sb	a3,-128(s0)
    800070ec:	10b65e63          	bge	a2,a1,80007208 <__printf+0x670>
    800070f0:	06300593          	li	a1,99
    800070f4:	02e7f6bb          	remuw	a3,a5,a4
    800070f8:	02069693          	slli	a3,a3,0x20
    800070fc:	0206d693          	srli	a3,a3,0x20
    80007100:	00dd86b3          	add	a3,s11,a3
    80007104:	0006c683          	lbu	a3,0(a3)
    80007108:	02e7d73b          	divuw	a4,a5,a4
    8000710c:	00200793          	li	a5,2
    80007110:	f8d400a3          	sb	a3,-127(s0)
    80007114:	bca5ece3          	bltu	a1,a0,80006cec <__printf+0x154>
    80007118:	ce5ff06f          	j	80006dfc <__printf+0x264>
    8000711c:	40e007bb          	negw	a5,a4
    80007120:	00002d97          	auipc	s11,0x2
    80007124:	490d8d93          	addi	s11,s11,1168 # 800095b0 <digits>
    80007128:	00f7f693          	andi	a3,a5,15
    8000712c:	00dd86b3          	add	a3,s11,a3
    80007130:	0006c583          	lbu	a1,0(a3)
    80007134:	ff100613          	li	a2,-15
    80007138:	0047d69b          	srliw	a3,a5,0x4
    8000713c:	f8b40023          	sb	a1,-128(s0)
    80007140:	0047d59b          	srliw	a1,a5,0x4
    80007144:	0ac75e63          	bge	a4,a2,80007200 <__printf+0x668>
    80007148:	00f6f693          	andi	a3,a3,15
    8000714c:	00dd86b3          	add	a3,s11,a3
    80007150:	0006c603          	lbu	a2,0(a3)
    80007154:	00f00693          	li	a3,15
    80007158:	0087d79b          	srliw	a5,a5,0x8
    8000715c:	f8c400a3          	sb	a2,-127(s0)
    80007160:	d8b6e4e3          	bltu	a3,a1,80006ee8 <__printf+0x350>
    80007164:	00200793          	li	a5,2
    80007168:	e2dff06f          	j	80006f94 <__printf+0x3fc>
    8000716c:	00002c97          	auipc	s9,0x2
    80007170:	424c8c93          	addi	s9,s9,1060 # 80009590 <CONSOLE_STATUS+0x580>
    80007174:	02800513          	li	a0,40
    80007178:	ef1ff06f          	j	80007068 <__printf+0x4d0>
    8000717c:	00700793          	li	a5,7
    80007180:	00600c93          	li	s9,6
    80007184:	e0dff06f          	j	80006f90 <__printf+0x3f8>
    80007188:	00700793          	li	a5,7
    8000718c:	00600c93          	li	s9,6
    80007190:	c69ff06f          	j	80006df8 <__printf+0x260>
    80007194:	00300793          	li	a5,3
    80007198:	00200c93          	li	s9,2
    8000719c:	c5dff06f          	j	80006df8 <__printf+0x260>
    800071a0:	00300793          	li	a5,3
    800071a4:	00200c93          	li	s9,2
    800071a8:	de9ff06f          	j	80006f90 <__printf+0x3f8>
    800071ac:	00400793          	li	a5,4
    800071b0:	00300c93          	li	s9,3
    800071b4:	dddff06f          	j	80006f90 <__printf+0x3f8>
    800071b8:	00400793          	li	a5,4
    800071bc:	00300c93          	li	s9,3
    800071c0:	c39ff06f          	j	80006df8 <__printf+0x260>
    800071c4:	00500793          	li	a5,5
    800071c8:	00400c93          	li	s9,4
    800071cc:	c2dff06f          	j	80006df8 <__printf+0x260>
    800071d0:	00500793          	li	a5,5
    800071d4:	00400c93          	li	s9,4
    800071d8:	db9ff06f          	j	80006f90 <__printf+0x3f8>
    800071dc:	00600793          	li	a5,6
    800071e0:	00500c93          	li	s9,5
    800071e4:	dadff06f          	j	80006f90 <__printf+0x3f8>
    800071e8:	00600793          	li	a5,6
    800071ec:	00500c93          	li	s9,5
    800071f0:	c09ff06f          	j	80006df8 <__printf+0x260>
    800071f4:	00800793          	li	a5,8
    800071f8:	00700c93          	li	s9,7
    800071fc:	bfdff06f          	j	80006df8 <__printf+0x260>
    80007200:	00100793          	li	a5,1
    80007204:	d91ff06f          	j	80006f94 <__printf+0x3fc>
    80007208:	00100793          	li	a5,1
    8000720c:	bf1ff06f          	j	80006dfc <__printf+0x264>
    80007210:	00900793          	li	a5,9
    80007214:	00800c93          	li	s9,8
    80007218:	be1ff06f          	j	80006df8 <__printf+0x260>
    8000721c:	00002517          	auipc	a0,0x2
    80007220:	37c50513          	addi	a0,a0,892 # 80009598 <CONSOLE_STATUS+0x588>
    80007224:	00000097          	auipc	ra,0x0
    80007228:	918080e7          	jalr	-1768(ra) # 80006b3c <panic>

000000008000722c <printfinit>:
    8000722c:	fe010113          	addi	sp,sp,-32
    80007230:	00813823          	sd	s0,16(sp)
    80007234:	00913423          	sd	s1,8(sp)
    80007238:	00113c23          	sd	ra,24(sp)
    8000723c:	02010413          	addi	s0,sp,32
    80007240:	00005497          	auipc	s1,0x5
    80007244:	4e048493          	addi	s1,s1,1248 # 8000c720 <pr>
    80007248:	00048513          	mv	a0,s1
    8000724c:	00002597          	auipc	a1,0x2
    80007250:	35c58593          	addi	a1,a1,860 # 800095a8 <CONSOLE_STATUS+0x598>
    80007254:	00000097          	auipc	ra,0x0
    80007258:	5f4080e7          	jalr	1524(ra) # 80007848 <initlock>
    8000725c:	01813083          	ld	ra,24(sp)
    80007260:	01013403          	ld	s0,16(sp)
    80007264:	0004ac23          	sw	zero,24(s1)
    80007268:	00813483          	ld	s1,8(sp)
    8000726c:	02010113          	addi	sp,sp,32
    80007270:	00008067          	ret

0000000080007274 <uartinit>:
    80007274:	ff010113          	addi	sp,sp,-16
    80007278:	00813423          	sd	s0,8(sp)
    8000727c:	01010413          	addi	s0,sp,16
    80007280:	100007b7          	lui	a5,0x10000
    80007284:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007288:	f8000713          	li	a4,-128
    8000728c:	00e781a3          	sb	a4,3(a5)
    80007290:	00300713          	li	a4,3
    80007294:	00e78023          	sb	a4,0(a5)
    80007298:	000780a3          	sb	zero,1(a5)
    8000729c:	00e781a3          	sb	a4,3(a5)
    800072a0:	00700693          	li	a3,7
    800072a4:	00d78123          	sb	a3,2(a5)
    800072a8:	00e780a3          	sb	a4,1(a5)
    800072ac:	00813403          	ld	s0,8(sp)
    800072b0:	01010113          	addi	sp,sp,16
    800072b4:	00008067          	ret

00000000800072b8 <uartputc>:
    800072b8:	00004797          	auipc	a5,0x4
    800072bc:	1807a783          	lw	a5,384(a5) # 8000b438 <panicked>
    800072c0:	00078463          	beqz	a5,800072c8 <uartputc+0x10>
    800072c4:	0000006f          	j	800072c4 <uartputc+0xc>
    800072c8:	fd010113          	addi	sp,sp,-48
    800072cc:	02813023          	sd	s0,32(sp)
    800072d0:	00913c23          	sd	s1,24(sp)
    800072d4:	01213823          	sd	s2,16(sp)
    800072d8:	01313423          	sd	s3,8(sp)
    800072dc:	02113423          	sd	ra,40(sp)
    800072e0:	03010413          	addi	s0,sp,48
    800072e4:	00004917          	auipc	s2,0x4
    800072e8:	15c90913          	addi	s2,s2,348 # 8000b440 <uart_tx_r>
    800072ec:	00093783          	ld	a5,0(s2)
    800072f0:	00004497          	auipc	s1,0x4
    800072f4:	15848493          	addi	s1,s1,344 # 8000b448 <uart_tx_w>
    800072f8:	0004b703          	ld	a4,0(s1)
    800072fc:	02078693          	addi	a3,a5,32
    80007300:	00050993          	mv	s3,a0
    80007304:	02e69c63          	bne	a3,a4,8000733c <uartputc+0x84>
    80007308:	00001097          	auipc	ra,0x1
    8000730c:	834080e7          	jalr	-1996(ra) # 80007b3c <push_on>
    80007310:	00093783          	ld	a5,0(s2)
    80007314:	0004b703          	ld	a4,0(s1)
    80007318:	02078793          	addi	a5,a5,32
    8000731c:	00e79463          	bne	a5,a4,80007324 <uartputc+0x6c>
    80007320:	0000006f          	j	80007320 <uartputc+0x68>
    80007324:	00001097          	auipc	ra,0x1
    80007328:	88c080e7          	jalr	-1908(ra) # 80007bb0 <pop_on>
    8000732c:	00093783          	ld	a5,0(s2)
    80007330:	0004b703          	ld	a4,0(s1)
    80007334:	02078693          	addi	a3,a5,32
    80007338:	fce688e3          	beq	a3,a4,80007308 <uartputc+0x50>
    8000733c:	01f77693          	andi	a3,a4,31
    80007340:	00005597          	auipc	a1,0x5
    80007344:	40058593          	addi	a1,a1,1024 # 8000c740 <uart_tx_buf>
    80007348:	00d586b3          	add	a3,a1,a3
    8000734c:	00170713          	addi	a4,a4,1
    80007350:	01368023          	sb	s3,0(a3)
    80007354:	00e4b023          	sd	a4,0(s1)
    80007358:	10000637          	lui	a2,0x10000
    8000735c:	02f71063          	bne	a4,a5,8000737c <uartputc+0xc4>
    80007360:	0340006f          	j	80007394 <uartputc+0xdc>
    80007364:	00074703          	lbu	a4,0(a4)
    80007368:	00f93023          	sd	a5,0(s2)
    8000736c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007370:	00093783          	ld	a5,0(s2)
    80007374:	0004b703          	ld	a4,0(s1)
    80007378:	00f70e63          	beq	a4,a5,80007394 <uartputc+0xdc>
    8000737c:	00564683          	lbu	a3,5(a2)
    80007380:	01f7f713          	andi	a4,a5,31
    80007384:	00e58733          	add	a4,a1,a4
    80007388:	0206f693          	andi	a3,a3,32
    8000738c:	00178793          	addi	a5,a5,1
    80007390:	fc069ae3          	bnez	a3,80007364 <uartputc+0xac>
    80007394:	02813083          	ld	ra,40(sp)
    80007398:	02013403          	ld	s0,32(sp)
    8000739c:	01813483          	ld	s1,24(sp)
    800073a0:	01013903          	ld	s2,16(sp)
    800073a4:	00813983          	ld	s3,8(sp)
    800073a8:	03010113          	addi	sp,sp,48
    800073ac:	00008067          	ret

00000000800073b0 <uartputc_sync>:
    800073b0:	ff010113          	addi	sp,sp,-16
    800073b4:	00813423          	sd	s0,8(sp)
    800073b8:	01010413          	addi	s0,sp,16
    800073bc:	00004717          	auipc	a4,0x4
    800073c0:	07c72703          	lw	a4,124(a4) # 8000b438 <panicked>
    800073c4:	02071663          	bnez	a4,800073f0 <uartputc_sync+0x40>
    800073c8:	00050793          	mv	a5,a0
    800073cc:	100006b7          	lui	a3,0x10000
    800073d0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800073d4:	02077713          	andi	a4,a4,32
    800073d8:	fe070ce3          	beqz	a4,800073d0 <uartputc_sync+0x20>
    800073dc:	0ff7f793          	andi	a5,a5,255
    800073e0:	00f68023          	sb	a5,0(a3)
    800073e4:	00813403          	ld	s0,8(sp)
    800073e8:	01010113          	addi	sp,sp,16
    800073ec:	00008067          	ret
    800073f0:	0000006f          	j	800073f0 <uartputc_sync+0x40>

00000000800073f4 <uartstart>:
    800073f4:	ff010113          	addi	sp,sp,-16
    800073f8:	00813423          	sd	s0,8(sp)
    800073fc:	01010413          	addi	s0,sp,16
    80007400:	00004617          	auipc	a2,0x4
    80007404:	04060613          	addi	a2,a2,64 # 8000b440 <uart_tx_r>
    80007408:	00004517          	auipc	a0,0x4
    8000740c:	04050513          	addi	a0,a0,64 # 8000b448 <uart_tx_w>
    80007410:	00063783          	ld	a5,0(a2)
    80007414:	00053703          	ld	a4,0(a0)
    80007418:	04f70263          	beq	a4,a5,8000745c <uartstart+0x68>
    8000741c:	100005b7          	lui	a1,0x10000
    80007420:	00005817          	auipc	a6,0x5
    80007424:	32080813          	addi	a6,a6,800 # 8000c740 <uart_tx_buf>
    80007428:	01c0006f          	j	80007444 <uartstart+0x50>
    8000742c:	0006c703          	lbu	a4,0(a3)
    80007430:	00f63023          	sd	a5,0(a2)
    80007434:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007438:	00063783          	ld	a5,0(a2)
    8000743c:	00053703          	ld	a4,0(a0)
    80007440:	00f70e63          	beq	a4,a5,8000745c <uartstart+0x68>
    80007444:	01f7f713          	andi	a4,a5,31
    80007448:	00e806b3          	add	a3,a6,a4
    8000744c:	0055c703          	lbu	a4,5(a1)
    80007450:	00178793          	addi	a5,a5,1
    80007454:	02077713          	andi	a4,a4,32
    80007458:	fc071ae3          	bnez	a4,8000742c <uartstart+0x38>
    8000745c:	00813403          	ld	s0,8(sp)
    80007460:	01010113          	addi	sp,sp,16
    80007464:	00008067          	ret

0000000080007468 <uartgetc>:
    80007468:	ff010113          	addi	sp,sp,-16
    8000746c:	00813423          	sd	s0,8(sp)
    80007470:	01010413          	addi	s0,sp,16
    80007474:	10000737          	lui	a4,0x10000
    80007478:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000747c:	0017f793          	andi	a5,a5,1
    80007480:	00078c63          	beqz	a5,80007498 <uartgetc+0x30>
    80007484:	00074503          	lbu	a0,0(a4)
    80007488:	0ff57513          	andi	a0,a0,255
    8000748c:	00813403          	ld	s0,8(sp)
    80007490:	01010113          	addi	sp,sp,16
    80007494:	00008067          	ret
    80007498:	fff00513          	li	a0,-1
    8000749c:	ff1ff06f          	j	8000748c <uartgetc+0x24>

00000000800074a0 <uartintr>:
    800074a0:	100007b7          	lui	a5,0x10000
    800074a4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800074a8:	0017f793          	andi	a5,a5,1
    800074ac:	0a078463          	beqz	a5,80007554 <uartintr+0xb4>
    800074b0:	fe010113          	addi	sp,sp,-32
    800074b4:	00813823          	sd	s0,16(sp)
    800074b8:	00913423          	sd	s1,8(sp)
    800074bc:	00113c23          	sd	ra,24(sp)
    800074c0:	02010413          	addi	s0,sp,32
    800074c4:	100004b7          	lui	s1,0x10000
    800074c8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800074cc:	0ff57513          	andi	a0,a0,255
    800074d0:	fffff097          	auipc	ra,0xfffff
    800074d4:	534080e7          	jalr	1332(ra) # 80006a04 <consoleintr>
    800074d8:	0054c783          	lbu	a5,5(s1)
    800074dc:	0017f793          	andi	a5,a5,1
    800074e0:	fe0794e3          	bnez	a5,800074c8 <uartintr+0x28>
    800074e4:	00004617          	auipc	a2,0x4
    800074e8:	f5c60613          	addi	a2,a2,-164 # 8000b440 <uart_tx_r>
    800074ec:	00004517          	auipc	a0,0x4
    800074f0:	f5c50513          	addi	a0,a0,-164 # 8000b448 <uart_tx_w>
    800074f4:	00063783          	ld	a5,0(a2)
    800074f8:	00053703          	ld	a4,0(a0)
    800074fc:	04f70263          	beq	a4,a5,80007540 <uartintr+0xa0>
    80007500:	100005b7          	lui	a1,0x10000
    80007504:	00005817          	auipc	a6,0x5
    80007508:	23c80813          	addi	a6,a6,572 # 8000c740 <uart_tx_buf>
    8000750c:	01c0006f          	j	80007528 <uartintr+0x88>
    80007510:	0006c703          	lbu	a4,0(a3)
    80007514:	00f63023          	sd	a5,0(a2)
    80007518:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000751c:	00063783          	ld	a5,0(a2)
    80007520:	00053703          	ld	a4,0(a0)
    80007524:	00f70e63          	beq	a4,a5,80007540 <uartintr+0xa0>
    80007528:	01f7f713          	andi	a4,a5,31
    8000752c:	00e806b3          	add	a3,a6,a4
    80007530:	0055c703          	lbu	a4,5(a1)
    80007534:	00178793          	addi	a5,a5,1
    80007538:	02077713          	andi	a4,a4,32
    8000753c:	fc071ae3          	bnez	a4,80007510 <uartintr+0x70>
    80007540:	01813083          	ld	ra,24(sp)
    80007544:	01013403          	ld	s0,16(sp)
    80007548:	00813483          	ld	s1,8(sp)
    8000754c:	02010113          	addi	sp,sp,32
    80007550:	00008067          	ret
    80007554:	00004617          	auipc	a2,0x4
    80007558:	eec60613          	addi	a2,a2,-276 # 8000b440 <uart_tx_r>
    8000755c:	00004517          	auipc	a0,0x4
    80007560:	eec50513          	addi	a0,a0,-276 # 8000b448 <uart_tx_w>
    80007564:	00063783          	ld	a5,0(a2)
    80007568:	00053703          	ld	a4,0(a0)
    8000756c:	04f70263          	beq	a4,a5,800075b0 <uartintr+0x110>
    80007570:	100005b7          	lui	a1,0x10000
    80007574:	00005817          	auipc	a6,0x5
    80007578:	1cc80813          	addi	a6,a6,460 # 8000c740 <uart_tx_buf>
    8000757c:	01c0006f          	j	80007598 <uartintr+0xf8>
    80007580:	0006c703          	lbu	a4,0(a3)
    80007584:	00f63023          	sd	a5,0(a2)
    80007588:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000758c:	00063783          	ld	a5,0(a2)
    80007590:	00053703          	ld	a4,0(a0)
    80007594:	02f70063          	beq	a4,a5,800075b4 <uartintr+0x114>
    80007598:	01f7f713          	andi	a4,a5,31
    8000759c:	00e806b3          	add	a3,a6,a4
    800075a0:	0055c703          	lbu	a4,5(a1)
    800075a4:	00178793          	addi	a5,a5,1
    800075a8:	02077713          	andi	a4,a4,32
    800075ac:	fc071ae3          	bnez	a4,80007580 <uartintr+0xe0>
    800075b0:	00008067          	ret
    800075b4:	00008067          	ret

00000000800075b8 <kinit>:
    800075b8:	fc010113          	addi	sp,sp,-64
    800075bc:	02913423          	sd	s1,40(sp)
    800075c0:	fffff7b7          	lui	a5,0xfffff
    800075c4:	00006497          	auipc	s1,0x6
    800075c8:	19b48493          	addi	s1,s1,411 # 8000d75f <end+0xfff>
    800075cc:	02813823          	sd	s0,48(sp)
    800075d0:	01313c23          	sd	s3,24(sp)
    800075d4:	00f4f4b3          	and	s1,s1,a5
    800075d8:	02113c23          	sd	ra,56(sp)
    800075dc:	03213023          	sd	s2,32(sp)
    800075e0:	01413823          	sd	s4,16(sp)
    800075e4:	01513423          	sd	s5,8(sp)
    800075e8:	04010413          	addi	s0,sp,64
    800075ec:	000017b7          	lui	a5,0x1
    800075f0:	01100993          	li	s3,17
    800075f4:	00f487b3          	add	a5,s1,a5
    800075f8:	01b99993          	slli	s3,s3,0x1b
    800075fc:	06f9e063          	bltu	s3,a5,8000765c <kinit+0xa4>
    80007600:	00005a97          	auipc	s5,0x5
    80007604:	160a8a93          	addi	s5,s5,352 # 8000c760 <end>
    80007608:	0754ec63          	bltu	s1,s5,80007680 <kinit+0xc8>
    8000760c:	0734fa63          	bgeu	s1,s3,80007680 <kinit+0xc8>
    80007610:	00088a37          	lui	s4,0x88
    80007614:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007618:	00004917          	auipc	s2,0x4
    8000761c:	e3890913          	addi	s2,s2,-456 # 8000b450 <kmem>
    80007620:	00ca1a13          	slli	s4,s4,0xc
    80007624:	0140006f          	j	80007638 <kinit+0x80>
    80007628:	000017b7          	lui	a5,0x1
    8000762c:	00f484b3          	add	s1,s1,a5
    80007630:	0554e863          	bltu	s1,s5,80007680 <kinit+0xc8>
    80007634:	0534f663          	bgeu	s1,s3,80007680 <kinit+0xc8>
    80007638:	00001637          	lui	a2,0x1
    8000763c:	00100593          	li	a1,1
    80007640:	00048513          	mv	a0,s1
    80007644:	00000097          	auipc	ra,0x0
    80007648:	5e4080e7          	jalr	1508(ra) # 80007c28 <__memset>
    8000764c:	00093783          	ld	a5,0(s2)
    80007650:	00f4b023          	sd	a5,0(s1)
    80007654:	00993023          	sd	s1,0(s2)
    80007658:	fd4498e3          	bne	s1,s4,80007628 <kinit+0x70>
    8000765c:	03813083          	ld	ra,56(sp)
    80007660:	03013403          	ld	s0,48(sp)
    80007664:	02813483          	ld	s1,40(sp)
    80007668:	02013903          	ld	s2,32(sp)
    8000766c:	01813983          	ld	s3,24(sp)
    80007670:	01013a03          	ld	s4,16(sp)
    80007674:	00813a83          	ld	s5,8(sp)
    80007678:	04010113          	addi	sp,sp,64
    8000767c:	00008067          	ret
    80007680:	00002517          	auipc	a0,0x2
    80007684:	f4850513          	addi	a0,a0,-184 # 800095c8 <digits+0x18>
    80007688:	fffff097          	auipc	ra,0xfffff
    8000768c:	4b4080e7          	jalr	1204(ra) # 80006b3c <panic>

0000000080007690 <freerange>:
    80007690:	fc010113          	addi	sp,sp,-64
    80007694:	000017b7          	lui	a5,0x1
    80007698:	02913423          	sd	s1,40(sp)
    8000769c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800076a0:	009504b3          	add	s1,a0,s1
    800076a4:	fffff537          	lui	a0,0xfffff
    800076a8:	02813823          	sd	s0,48(sp)
    800076ac:	02113c23          	sd	ra,56(sp)
    800076b0:	03213023          	sd	s2,32(sp)
    800076b4:	01313c23          	sd	s3,24(sp)
    800076b8:	01413823          	sd	s4,16(sp)
    800076bc:	01513423          	sd	s5,8(sp)
    800076c0:	01613023          	sd	s6,0(sp)
    800076c4:	04010413          	addi	s0,sp,64
    800076c8:	00a4f4b3          	and	s1,s1,a0
    800076cc:	00f487b3          	add	a5,s1,a5
    800076d0:	06f5e463          	bltu	a1,a5,80007738 <freerange+0xa8>
    800076d4:	00005a97          	auipc	s5,0x5
    800076d8:	08ca8a93          	addi	s5,s5,140 # 8000c760 <end>
    800076dc:	0954e263          	bltu	s1,s5,80007760 <freerange+0xd0>
    800076e0:	01100993          	li	s3,17
    800076e4:	01b99993          	slli	s3,s3,0x1b
    800076e8:	0734fc63          	bgeu	s1,s3,80007760 <freerange+0xd0>
    800076ec:	00058a13          	mv	s4,a1
    800076f0:	00004917          	auipc	s2,0x4
    800076f4:	d6090913          	addi	s2,s2,-672 # 8000b450 <kmem>
    800076f8:	00002b37          	lui	s6,0x2
    800076fc:	0140006f          	j	80007710 <freerange+0x80>
    80007700:	000017b7          	lui	a5,0x1
    80007704:	00f484b3          	add	s1,s1,a5
    80007708:	0554ec63          	bltu	s1,s5,80007760 <freerange+0xd0>
    8000770c:	0534fa63          	bgeu	s1,s3,80007760 <freerange+0xd0>
    80007710:	00001637          	lui	a2,0x1
    80007714:	00100593          	li	a1,1
    80007718:	00048513          	mv	a0,s1
    8000771c:	00000097          	auipc	ra,0x0
    80007720:	50c080e7          	jalr	1292(ra) # 80007c28 <__memset>
    80007724:	00093703          	ld	a4,0(s2)
    80007728:	016487b3          	add	a5,s1,s6
    8000772c:	00e4b023          	sd	a4,0(s1)
    80007730:	00993023          	sd	s1,0(s2)
    80007734:	fcfa76e3          	bgeu	s4,a5,80007700 <freerange+0x70>
    80007738:	03813083          	ld	ra,56(sp)
    8000773c:	03013403          	ld	s0,48(sp)
    80007740:	02813483          	ld	s1,40(sp)
    80007744:	02013903          	ld	s2,32(sp)
    80007748:	01813983          	ld	s3,24(sp)
    8000774c:	01013a03          	ld	s4,16(sp)
    80007750:	00813a83          	ld	s5,8(sp)
    80007754:	00013b03          	ld	s6,0(sp)
    80007758:	04010113          	addi	sp,sp,64
    8000775c:	00008067          	ret
    80007760:	00002517          	auipc	a0,0x2
    80007764:	e6850513          	addi	a0,a0,-408 # 800095c8 <digits+0x18>
    80007768:	fffff097          	auipc	ra,0xfffff
    8000776c:	3d4080e7          	jalr	980(ra) # 80006b3c <panic>

0000000080007770 <kfree>:
    80007770:	fe010113          	addi	sp,sp,-32
    80007774:	00813823          	sd	s0,16(sp)
    80007778:	00113c23          	sd	ra,24(sp)
    8000777c:	00913423          	sd	s1,8(sp)
    80007780:	02010413          	addi	s0,sp,32
    80007784:	03451793          	slli	a5,a0,0x34
    80007788:	04079c63          	bnez	a5,800077e0 <kfree+0x70>
    8000778c:	00005797          	auipc	a5,0x5
    80007790:	fd478793          	addi	a5,a5,-44 # 8000c760 <end>
    80007794:	00050493          	mv	s1,a0
    80007798:	04f56463          	bltu	a0,a5,800077e0 <kfree+0x70>
    8000779c:	01100793          	li	a5,17
    800077a0:	01b79793          	slli	a5,a5,0x1b
    800077a4:	02f57e63          	bgeu	a0,a5,800077e0 <kfree+0x70>
    800077a8:	00001637          	lui	a2,0x1
    800077ac:	00100593          	li	a1,1
    800077b0:	00000097          	auipc	ra,0x0
    800077b4:	478080e7          	jalr	1144(ra) # 80007c28 <__memset>
    800077b8:	00004797          	auipc	a5,0x4
    800077bc:	c9878793          	addi	a5,a5,-872 # 8000b450 <kmem>
    800077c0:	0007b703          	ld	a4,0(a5)
    800077c4:	01813083          	ld	ra,24(sp)
    800077c8:	01013403          	ld	s0,16(sp)
    800077cc:	00e4b023          	sd	a4,0(s1)
    800077d0:	0097b023          	sd	s1,0(a5)
    800077d4:	00813483          	ld	s1,8(sp)
    800077d8:	02010113          	addi	sp,sp,32
    800077dc:	00008067          	ret
    800077e0:	00002517          	auipc	a0,0x2
    800077e4:	de850513          	addi	a0,a0,-536 # 800095c8 <digits+0x18>
    800077e8:	fffff097          	auipc	ra,0xfffff
    800077ec:	354080e7          	jalr	852(ra) # 80006b3c <panic>

00000000800077f0 <kalloc>:
    800077f0:	fe010113          	addi	sp,sp,-32
    800077f4:	00813823          	sd	s0,16(sp)
    800077f8:	00913423          	sd	s1,8(sp)
    800077fc:	00113c23          	sd	ra,24(sp)
    80007800:	02010413          	addi	s0,sp,32
    80007804:	00004797          	auipc	a5,0x4
    80007808:	c4c78793          	addi	a5,a5,-948 # 8000b450 <kmem>
    8000780c:	0007b483          	ld	s1,0(a5)
    80007810:	02048063          	beqz	s1,80007830 <kalloc+0x40>
    80007814:	0004b703          	ld	a4,0(s1)
    80007818:	00001637          	lui	a2,0x1
    8000781c:	00500593          	li	a1,5
    80007820:	00048513          	mv	a0,s1
    80007824:	00e7b023          	sd	a4,0(a5)
    80007828:	00000097          	auipc	ra,0x0
    8000782c:	400080e7          	jalr	1024(ra) # 80007c28 <__memset>
    80007830:	01813083          	ld	ra,24(sp)
    80007834:	01013403          	ld	s0,16(sp)
    80007838:	00048513          	mv	a0,s1
    8000783c:	00813483          	ld	s1,8(sp)
    80007840:	02010113          	addi	sp,sp,32
    80007844:	00008067          	ret

0000000080007848 <initlock>:
    80007848:	ff010113          	addi	sp,sp,-16
    8000784c:	00813423          	sd	s0,8(sp)
    80007850:	01010413          	addi	s0,sp,16
    80007854:	00813403          	ld	s0,8(sp)
    80007858:	00b53423          	sd	a1,8(a0)
    8000785c:	00052023          	sw	zero,0(a0)
    80007860:	00053823          	sd	zero,16(a0)
    80007864:	01010113          	addi	sp,sp,16
    80007868:	00008067          	ret

000000008000786c <acquire>:
    8000786c:	fe010113          	addi	sp,sp,-32
    80007870:	00813823          	sd	s0,16(sp)
    80007874:	00913423          	sd	s1,8(sp)
    80007878:	00113c23          	sd	ra,24(sp)
    8000787c:	01213023          	sd	s2,0(sp)
    80007880:	02010413          	addi	s0,sp,32
    80007884:	00050493          	mv	s1,a0
    80007888:	10002973          	csrr	s2,sstatus
    8000788c:	100027f3          	csrr	a5,sstatus
    80007890:	ffd7f793          	andi	a5,a5,-3
    80007894:	10079073          	csrw	sstatus,a5
    80007898:	fffff097          	auipc	ra,0xfffff
    8000789c:	8ec080e7          	jalr	-1812(ra) # 80006184 <mycpu>
    800078a0:	07852783          	lw	a5,120(a0)
    800078a4:	06078e63          	beqz	a5,80007920 <acquire+0xb4>
    800078a8:	fffff097          	auipc	ra,0xfffff
    800078ac:	8dc080e7          	jalr	-1828(ra) # 80006184 <mycpu>
    800078b0:	07852783          	lw	a5,120(a0)
    800078b4:	0004a703          	lw	a4,0(s1)
    800078b8:	0017879b          	addiw	a5,a5,1
    800078bc:	06f52c23          	sw	a5,120(a0)
    800078c0:	04071063          	bnez	a4,80007900 <acquire+0x94>
    800078c4:	00100713          	li	a4,1
    800078c8:	00070793          	mv	a5,a4
    800078cc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800078d0:	0007879b          	sext.w	a5,a5
    800078d4:	fe079ae3          	bnez	a5,800078c8 <acquire+0x5c>
    800078d8:	0ff0000f          	fence
    800078dc:	fffff097          	auipc	ra,0xfffff
    800078e0:	8a8080e7          	jalr	-1880(ra) # 80006184 <mycpu>
    800078e4:	01813083          	ld	ra,24(sp)
    800078e8:	01013403          	ld	s0,16(sp)
    800078ec:	00a4b823          	sd	a0,16(s1)
    800078f0:	00013903          	ld	s2,0(sp)
    800078f4:	00813483          	ld	s1,8(sp)
    800078f8:	02010113          	addi	sp,sp,32
    800078fc:	00008067          	ret
    80007900:	0104b903          	ld	s2,16(s1)
    80007904:	fffff097          	auipc	ra,0xfffff
    80007908:	880080e7          	jalr	-1920(ra) # 80006184 <mycpu>
    8000790c:	faa91ce3          	bne	s2,a0,800078c4 <acquire+0x58>
    80007910:	00002517          	auipc	a0,0x2
    80007914:	cc050513          	addi	a0,a0,-832 # 800095d0 <digits+0x20>
    80007918:	fffff097          	auipc	ra,0xfffff
    8000791c:	224080e7          	jalr	548(ra) # 80006b3c <panic>
    80007920:	00195913          	srli	s2,s2,0x1
    80007924:	fffff097          	auipc	ra,0xfffff
    80007928:	860080e7          	jalr	-1952(ra) # 80006184 <mycpu>
    8000792c:	00197913          	andi	s2,s2,1
    80007930:	07252e23          	sw	s2,124(a0)
    80007934:	f75ff06f          	j	800078a8 <acquire+0x3c>

0000000080007938 <release>:
    80007938:	fe010113          	addi	sp,sp,-32
    8000793c:	00813823          	sd	s0,16(sp)
    80007940:	00113c23          	sd	ra,24(sp)
    80007944:	00913423          	sd	s1,8(sp)
    80007948:	01213023          	sd	s2,0(sp)
    8000794c:	02010413          	addi	s0,sp,32
    80007950:	00052783          	lw	a5,0(a0)
    80007954:	00079a63          	bnez	a5,80007968 <release+0x30>
    80007958:	00002517          	auipc	a0,0x2
    8000795c:	c8050513          	addi	a0,a0,-896 # 800095d8 <digits+0x28>
    80007960:	fffff097          	auipc	ra,0xfffff
    80007964:	1dc080e7          	jalr	476(ra) # 80006b3c <panic>
    80007968:	01053903          	ld	s2,16(a0)
    8000796c:	00050493          	mv	s1,a0
    80007970:	fffff097          	auipc	ra,0xfffff
    80007974:	814080e7          	jalr	-2028(ra) # 80006184 <mycpu>
    80007978:	fea910e3          	bne	s2,a0,80007958 <release+0x20>
    8000797c:	0004b823          	sd	zero,16(s1)
    80007980:	0ff0000f          	fence
    80007984:	0f50000f          	fence	iorw,ow
    80007988:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000798c:	ffffe097          	auipc	ra,0xffffe
    80007990:	7f8080e7          	jalr	2040(ra) # 80006184 <mycpu>
    80007994:	100027f3          	csrr	a5,sstatus
    80007998:	0027f793          	andi	a5,a5,2
    8000799c:	04079a63          	bnez	a5,800079f0 <release+0xb8>
    800079a0:	07852783          	lw	a5,120(a0)
    800079a4:	02f05e63          	blez	a5,800079e0 <release+0xa8>
    800079a8:	fff7871b          	addiw	a4,a5,-1
    800079ac:	06e52c23          	sw	a4,120(a0)
    800079b0:	00071c63          	bnez	a4,800079c8 <release+0x90>
    800079b4:	07c52783          	lw	a5,124(a0)
    800079b8:	00078863          	beqz	a5,800079c8 <release+0x90>
    800079bc:	100027f3          	csrr	a5,sstatus
    800079c0:	0027e793          	ori	a5,a5,2
    800079c4:	10079073          	csrw	sstatus,a5
    800079c8:	01813083          	ld	ra,24(sp)
    800079cc:	01013403          	ld	s0,16(sp)
    800079d0:	00813483          	ld	s1,8(sp)
    800079d4:	00013903          	ld	s2,0(sp)
    800079d8:	02010113          	addi	sp,sp,32
    800079dc:	00008067          	ret
    800079e0:	00002517          	auipc	a0,0x2
    800079e4:	c1850513          	addi	a0,a0,-1000 # 800095f8 <digits+0x48>
    800079e8:	fffff097          	auipc	ra,0xfffff
    800079ec:	154080e7          	jalr	340(ra) # 80006b3c <panic>
    800079f0:	00002517          	auipc	a0,0x2
    800079f4:	bf050513          	addi	a0,a0,-1040 # 800095e0 <digits+0x30>
    800079f8:	fffff097          	auipc	ra,0xfffff
    800079fc:	144080e7          	jalr	324(ra) # 80006b3c <panic>

0000000080007a00 <holding>:
    80007a00:	00052783          	lw	a5,0(a0)
    80007a04:	00079663          	bnez	a5,80007a10 <holding+0x10>
    80007a08:	00000513          	li	a0,0
    80007a0c:	00008067          	ret
    80007a10:	fe010113          	addi	sp,sp,-32
    80007a14:	00813823          	sd	s0,16(sp)
    80007a18:	00913423          	sd	s1,8(sp)
    80007a1c:	00113c23          	sd	ra,24(sp)
    80007a20:	02010413          	addi	s0,sp,32
    80007a24:	01053483          	ld	s1,16(a0)
    80007a28:	ffffe097          	auipc	ra,0xffffe
    80007a2c:	75c080e7          	jalr	1884(ra) # 80006184 <mycpu>
    80007a30:	01813083          	ld	ra,24(sp)
    80007a34:	01013403          	ld	s0,16(sp)
    80007a38:	40a48533          	sub	a0,s1,a0
    80007a3c:	00153513          	seqz	a0,a0
    80007a40:	00813483          	ld	s1,8(sp)
    80007a44:	02010113          	addi	sp,sp,32
    80007a48:	00008067          	ret

0000000080007a4c <push_off>:
    80007a4c:	fe010113          	addi	sp,sp,-32
    80007a50:	00813823          	sd	s0,16(sp)
    80007a54:	00113c23          	sd	ra,24(sp)
    80007a58:	00913423          	sd	s1,8(sp)
    80007a5c:	02010413          	addi	s0,sp,32
    80007a60:	100024f3          	csrr	s1,sstatus
    80007a64:	100027f3          	csrr	a5,sstatus
    80007a68:	ffd7f793          	andi	a5,a5,-3
    80007a6c:	10079073          	csrw	sstatus,a5
    80007a70:	ffffe097          	auipc	ra,0xffffe
    80007a74:	714080e7          	jalr	1812(ra) # 80006184 <mycpu>
    80007a78:	07852783          	lw	a5,120(a0)
    80007a7c:	02078663          	beqz	a5,80007aa8 <push_off+0x5c>
    80007a80:	ffffe097          	auipc	ra,0xffffe
    80007a84:	704080e7          	jalr	1796(ra) # 80006184 <mycpu>
    80007a88:	07852783          	lw	a5,120(a0)
    80007a8c:	01813083          	ld	ra,24(sp)
    80007a90:	01013403          	ld	s0,16(sp)
    80007a94:	0017879b          	addiw	a5,a5,1
    80007a98:	06f52c23          	sw	a5,120(a0)
    80007a9c:	00813483          	ld	s1,8(sp)
    80007aa0:	02010113          	addi	sp,sp,32
    80007aa4:	00008067          	ret
    80007aa8:	0014d493          	srli	s1,s1,0x1
    80007aac:	ffffe097          	auipc	ra,0xffffe
    80007ab0:	6d8080e7          	jalr	1752(ra) # 80006184 <mycpu>
    80007ab4:	0014f493          	andi	s1,s1,1
    80007ab8:	06952e23          	sw	s1,124(a0)
    80007abc:	fc5ff06f          	j	80007a80 <push_off+0x34>

0000000080007ac0 <pop_off>:
    80007ac0:	ff010113          	addi	sp,sp,-16
    80007ac4:	00813023          	sd	s0,0(sp)
    80007ac8:	00113423          	sd	ra,8(sp)
    80007acc:	01010413          	addi	s0,sp,16
    80007ad0:	ffffe097          	auipc	ra,0xffffe
    80007ad4:	6b4080e7          	jalr	1716(ra) # 80006184 <mycpu>
    80007ad8:	100027f3          	csrr	a5,sstatus
    80007adc:	0027f793          	andi	a5,a5,2
    80007ae0:	04079663          	bnez	a5,80007b2c <pop_off+0x6c>
    80007ae4:	07852783          	lw	a5,120(a0)
    80007ae8:	02f05a63          	blez	a5,80007b1c <pop_off+0x5c>
    80007aec:	fff7871b          	addiw	a4,a5,-1
    80007af0:	06e52c23          	sw	a4,120(a0)
    80007af4:	00071c63          	bnez	a4,80007b0c <pop_off+0x4c>
    80007af8:	07c52783          	lw	a5,124(a0)
    80007afc:	00078863          	beqz	a5,80007b0c <pop_off+0x4c>
    80007b00:	100027f3          	csrr	a5,sstatus
    80007b04:	0027e793          	ori	a5,a5,2
    80007b08:	10079073          	csrw	sstatus,a5
    80007b0c:	00813083          	ld	ra,8(sp)
    80007b10:	00013403          	ld	s0,0(sp)
    80007b14:	01010113          	addi	sp,sp,16
    80007b18:	00008067          	ret
    80007b1c:	00002517          	auipc	a0,0x2
    80007b20:	adc50513          	addi	a0,a0,-1316 # 800095f8 <digits+0x48>
    80007b24:	fffff097          	auipc	ra,0xfffff
    80007b28:	018080e7          	jalr	24(ra) # 80006b3c <panic>
    80007b2c:	00002517          	auipc	a0,0x2
    80007b30:	ab450513          	addi	a0,a0,-1356 # 800095e0 <digits+0x30>
    80007b34:	fffff097          	auipc	ra,0xfffff
    80007b38:	008080e7          	jalr	8(ra) # 80006b3c <panic>

0000000080007b3c <push_on>:
    80007b3c:	fe010113          	addi	sp,sp,-32
    80007b40:	00813823          	sd	s0,16(sp)
    80007b44:	00113c23          	sd	ra,24(sp)
    80007b48:	00913423          	sd	s1,8(sp)
    80007b4c:	02010413          	addi	s0,sp,32
    80007b50:	100024f3          	csrr	s1,sstatus
    80007b54:	100027f3          	csrr	a5,sstatus
    80007b58:	0027e793          	ori	a5,a5,2
    80007b5c:	10079073          	csrw	sstatus,a5
    80007b60:	ffffe097          	auipc	ra,0xffffe
    80007b64:	624080e7          	jalr	1572(ra) # 80006184 <mycpu>
    80007b68:	07852783          	lw	a5,120(a0)
    80007b6c:	02078663          	beqz	a5,80007b98 <push_on+0x5c>
    80007b70:	ffffe097          	auipc	ra,0xffffe
    80007b74:	614080e7          	jalr	1556(ra) # 80006184 <mycpu>
    80007b78:	07852783          	lw	a5,120(a0)
    80007b7c:	01813083          	ld	ra,24(sp)
    80007b80:	01013403          	ld	s0,16(sp)
    80007b84:	0017879b          	addiw	a5,a5,1
    80007b88:	06f52c23          	sw	a5,120(a0)
    80007b8c:	00813483          	ld	s1,8(sp)
    80007b90:	02010113          	addi	sp,sp,32
    80007b94:	00008067          	ret
    80007b98:	0014d493          	srli	s1,s1,0x1
    80007b9c:	ffffe097          	auipc	ra,0xffffe
    80007ba0:	5e8080e7          	jalr	1512(ra) # 80006184 <mycpu>
    80007ba4:	0014f493          	andi	s1,s1,1
    80007ba8:	06952e23          	sw	s1,124(a0)
    80007bac:	fc5ff06f          	j	80007b70 <push_on+0x34>

0000000080007bb0 <pop_on>:
    80007bb0:	ff010113          	addi	sp,sp,-16
    80007bb4:	00813023          	sd	s0,0(sp)
    80007bb8:	00113423          	sd	ra,8(sp)
    80007bbc:	01010413          	addi	s0,sp,16
    80007bc0:	ffffe097          	auipc	ra,0xffffe
    80007bc4:	5c4080e7          	jalr	1476(ra) # 80006184 <mycpu>
    80007bc8:	100027f3          	csrr	a5,sstatus
    80007bcc:	0027f793          	andi	a5,a5,2
    80007bd0:	04078463          	beqz	a5,80007c18 <pop_on+0x68>
    80007bd4:	07852783          	lw	a5,120(a0)
    80007bd8:	02f05863          	blez	a5,80007c08 <pop_on+0x58>
    80007bdc:	fff7879b          	addiw	a5,a5,-1
    80007be0:	06f52c23          	sw	a5,120(a0)
    80007be4:	07853783          	ld	a5,120(a0)
    80007be8:	00079863          	bnez	a5,80007bf8 <pop_on+0x48>
    80007bec:	100027f3          	csrr	a5,sstatus
    80007bf0:	ffd7f793          	andi	a5,a5,-3
    80007bf4:	10079073          	csrw	sstatus,a5
    80007bf8:	00813083          	ld	ra,8(sp)
    80007bfc:	00013403          	ld	s0,0(sp)
    80007c00:	01010113          	addi	sp,sp,16
    80007c04:	00008067          	ret
    80007c08:	00002517          	auipc	a0,0x2
    80007c0c:	a1850513          	addi	a0,a0,-1512 # 80009620 <digits+0x70>
    80007c10:	fffff097          	auipc	ra,0xfffff
    80007c14:	f2c080e7          	jalr	-212(ra) # 80006b3c <panic>
    80007c18:	00002517          	auipc	a0,0x2
    80007c1c:	9e850513          	addi	a0,a0,-1560 # 80009600 <digits+0x50>
    80007c20:	fffff097          	auipc	ra,0xfffff
    80007c24:	f1c080e7          	jalr	-228(ra) # 80006b3c <panic>

0000000080007c28 <__memset>:
    80007c28:	ff010113          	addi	sp,sp,-16
    80007c2c:	00813423          	sd	s0,8(sp)
    80007c30:	01010413          	addi	s0,sp,16
    80007c34:	1a060e63          	beqz	a2,80007df0 <__memset+0x1c8>
    80007c38:	40a007b3          	neg	a5,a0
    80007c3c:	0077f793          	andi	a5,a5,7
    80007c40:	00778693          	addi	a3,a5,7
    80007c44:	00b00813          	li	a6,11
    80007c48:	0ff5f593          	andi	a1,a1,255
    80007c4c:	fff6071b          	addiw	a4,a2,-1
    80007c50:	1b06e663          	bltu	a3,a6,80007dfc <__memset+0x1d4>
    80007c54:	1cd76463          	bltu	a4,a3,80007e1c <__memset+0x1f4>
    80007c58:	1a078e63          	beqz	a5,80007e14 <__memset+0x1ec>
    80007c5c:	00b50023          	sb	a1,0(a0)
    80007c60:	00100713          	li	a4,1
    80007c64:	1ae78463          	beq	a5,a4,80007e0c <__memset+0x1e4>
    80007c68:	00b500a3          	sb	a1,1(a0)
    80007c6c:	00200713          	li	a4,2
    80007c70:	1ae78a63          	beq	a5,a4,80007e24 <__memset+0x1fc>
    80007c74:	00b50123          	sb	a1,2(a0)
    80007c78:	00300713          	li	a4,3
    80007c7c:	18e78463          	beq	a5,a4,80007e04 <__memset+0x1dc>
    80007c80:	00b501a3          	sb	a1,3(a0)
    80007c84:	00400713          	li	a4,4
    80007c88:	1ae78263          	beq	a5,a4,80007e2c <__memset+0x204>
    80007c8c:	00b50223          	sb	a1,4(a0)
    80007c90:	00500713          	li	a4,5
    80007c94:	1ae78063          	beq	a5,a4,80007e34 <__memset+0x20c>
    80007c98:	00b502a3          	sb	a1,5(a0)
    80007c9c:	00700713          	li	a4,7
    80007ca0:	18e79e63          	bne	a5,a4,80007e3c <__memset+0x214>
    80007ca4:	00b50323          	sb	a1,6(a0)
    80007ca8:	00700e93          	li	t4,7
    80007cac:	00859713          	slli	a4,a1,0x8
    80007cb0:	00e5e733          	or	a4,a1,a4
    80007cb4:	01059e13          	slli	t3,a1,0x10
    80007cb8:	01c76e33          	or	t3,a4,t3
    80007cbc:	01859313          	slli	t1,a1,0x18
    80007cc0:	006e6333          	or	t1,t3,t1
    80007cc4:	02059893          	slli	a7,a1,0x20
    80007cc8:	40f60e3b          	subw	t3,a2,a5
    80007ccc:	011368b3          	or	a7,t1,a7
    80007cd0:	02859813          	slli	a6,a1,0x28
    80007cd4:	0108e833          	or	a6,a7,a6
    80007cd8:	03059693          	slli	a3,a1,0x30
    80007cdc:	003e589b          	srliw	a7,t3,0x3
    80007ce0:	00d866b3          	or	a3,a6,a3
    80007ce4:	03859713          	slli	a4,a1,0x38
    80007ce8:	00389813          	slli	a6,a7,0x3
    80007cec:	00f507b3          	add	a5,a0,a5
    80007cf0:	00e6e733          	or	a4,a3,a4
    80007cf4:	000e089b          	sext.w	a7,t3
    80007cf8:	00f806b3          	add	a3,a6,a5
    80007cfc:	00e7b023          	sd	a4,0(a5)
    80007d00:	00878793          	addi	a5,a5,8
    80007d04:	fed79ce3          	bne	a5,a3,80007cfc <__memset+0xd4>
    80007d08:	ff8e7793          	andi	a5,t3,-8
    80007d0c:	0007871b          	sext.w	a4,a5
    80007d10:	01d787bb          	addw	a5,a5,t4
    80007d14:	0ce88e63          	beq	a7,a4,80007df0 <__memset+0x1c8>
    80007d18:	00f50733          	add	a4,a0,a5
    80007d1c:	00b70023          	sb	a1,0(a4)
    80007d20:	0017871b          	addiw	a4,a5,1
    80007d24:	0cc77663          	bgeu	a4,a2,80007df0 <__memset+0x1c8>
    80007d28:	00e50733          	add	a4,a0,a4
    80007d2c:	00b70023          	sb	a1,0(a4)
    80007d30:	0027871b          	addiw	a4,a5,2
    80007d34:	0ac77e63          	bgeu	a4,a2,80007df0 <__memset+0x1c8>
    80007d38:	00e50733          	add	a4,a0,a4
    80007d3c:	00b70023          	sb	a1,0(a4)
    80007d40:	0037871b          	addiw	a4,a5,3
    80007d44:	0ac77663          	bgeu	a4,a2,80007df0 <__memset+0x1c8>
    80007d48:	00e50733          	add	a4,a0,a4
    80007d4c:	00b70023          	sb	a1,0(a4)
    80007d50:	0047871b          	addiw	a4,a5,4
    80007d54:	08c77e63          	bgeu	a4,a2,80007df0 <__memset+0x1c8>
    80007d58:	00e50733          	add	a4,a0,a4
    80007d5c:	00b70023          	sb	a1,0(a4)
    80007d60:	0057871b          	addiw	a4,a5,5
    80007d64:	08c77663          	bgeu	a4,a2,80007df0 <__memset+0x1c8>
    80007d68:	00e50733          	add	a4,a0,a4
    80007d6c:	00b70023          	sb	a1,0(a4)
    80007d70:	0067871b          	addiw	a4,a5,6
    80007d74:	06c77e63          	bgeu	a4,a2,80007df0 <__memset+0x1c8>
    80007d78:	00e50733          	add	a4,a0,a4
    80007d7c:	00b70023          	sb	a1,0(a4)
    80007d80:	0077871b          	addiw	a4,a5,7
    80007d84:	06c77663          	bgeu	a4,a2,80007df0 <__memset+0x1c8>
    80007d88:	00e50733          	add	a4,a0,a4
    80007d8c:	00b70023          	sb	a1,0(a4)
    80007d90:	0087871b          	addiw	a4,a5,8
    80007d94:	04c77e63          	bgeu	a4,a2,80007df0 <__memset+0x1c8>
    80007d98:	00e50733          	add	a4,a0,a4
    80007d9c:	00b70023          	sb	a1,0(a4)
    80007da0:	0097871b          	addiw	a4,a5,9
    80007da4:	04c77663          	bgeu	a4,a2,80007df0 <__memset+0x1c8>
    80007da8:	00e50733          	add	a4,a0,a4
    80007dac:	00b70023          	sb	a1,0(a4)
    80007db0:	00a7871b          	addiw	a4,a5,10
    80007db4:	02c77e63          	bgeu	a4,a2,80007df0 <__memset+0x1c8>
    80007db8:	00e50733          	add	a4,a0,a4
    80007dbc:	00b70023          	sb	a1,0(a4)
    80007dc0:	00b7871b          	addiw	a4,a5,11
    80007dc4:	02c77663          	bgeu	a4,a2,80007df0 <__memset+0x1c8>
    80007dc8:	00e50733          	add	a4,a0,a4
    80007dcc:	00b70023          	sb	a1,0(a4)
    80007dd0:	00c7871b          	addiw	a4,a5,12
    80007dd4:	00c77e63          	bgeu	a4,a2,80007df0 <__memset+0x1c8>
    80007dd8:	00e50733          	add	a4,a0,a4
    80007ddc:	00b70023          	sb	a1,0(a4)
    80007de0:	00d7879b          	addiw	a5,a5,13
    80007de4:	00c7f663          	bgeu	a5,a2,80007df0 <__memset+0x1c8>
    80007de8:	00f507b3          	add	a5,a0,a5
    80007dec:	00b78023          	sb	a1,0(a5)
    80007df0:	00813403          	ld	s0,8(sp)
    80007df4:	01010113          	addi	sp,sp,16
    80007df8:	00008067          	ret
    80007dfc:	00b00693          	li	a3,11
    80007e00:	e55ff06f          	j	80007c54 <__memset+0x2c>
    80007e04:	00300e93          	li	t4,3
    80007e08:	ea5ff06f          	j	80007cac <__memset+0x84>
    80007e0c:	00100e93          	li	t4,1
    80007e10:	e9dff06f          	j	80007cac <__memset+0x84>
    80007e14:	00000e93          	li	t4,0
    80007e18:	e95ff06f          	j	80007cac <__memset+0x84>
    80007e1c:	00000793          	li	a5,0
    80007e20:	ef9ff06f          	j	80007d18 <__memset+0xf0>
    80007e24:	00200e93          	li	t4,2
    80007e28:	e85ff06f          	j	80007cac <__memset+0x84>
    80007e2c:	00400e93          	li	t4,4
    80007e30:	e7dff06f          	j	80007cac <__memset+0x84>
    80007e34:	00500e93          	li	t4,5
    80007e38:	e75ff06f          	j	80007cac <__memset+0x84>
    80007e3c:	00600e93          	li	t4,6
    80007e40:	e6dff06f          	j	80007cac <__memset+0x84>

0000000080007e44 <__memmove>:
    80007e44:	ff010113          	addi	sp,sp,-16
    80007e48:	00813423          	sd	s0,8(sp)
    80007e4c:	01010413          	addi	s0,sp,16
    80007e50:	0e060863          	beqz	a2,80007f40 <__memmove+0xfc>
    80007e54:	fff6069b          	addiw	a3,a2,-1
    80007e58:	0006881b          	sext.w	a6,a3
    80007e5c:	0ea5e863          	bltu	a1,a0,80007f4c <__memmove+0x108>
    80007e60:	00758713          	addi	a4,a1,7
    80007e64:	00a5e7b3          	or	a5,a1,a0
    80007e68:	40a70733          	sub	a4,a4,a0
    80007e6c:	0077f793          	andi	a5,a5,7
    80007e70:	00f73713          	sltiu	a4,a4,15
    80007e74:	00174713          	xori	a4,a4,1
    80007e78:	0017b793          	seqz	a5,a5
    80007e7c:	00e7f7b3          	and	a5,a5,a4
    80007e80:	10078863          	beqz	a5,80007f90 <__memmove+0x14c>
    80007e84:	00900793          	li	a5,9
    80007e88:	1107f463          	bgeu	a5,a6,80007f90 <__memmove+0x14c>
    80007e8c:	0036581b          	srliw	a6,a2,0x3
    80007e90:	fff8081b          	addiw	a6,a6,-1
    80007e94:	02081813          	slli	a6,a6,0x20
    80007e98:	01d85893          	srli	a7,a6,0x1d
    80007e9c:	00858813          	addi	a6,a1,8
    80007ea0:	00058793          	mv	a5,a1
    80007ea4:	00050713          	mv	a4,a0
    80007ea8:	01088833          	add	a6,a7,a6
    80007eac:	0007b883          	ld	a7,0(a5)
    80007eb0:	00878793          	addi	a5,a5,8
    80007eb4:	00870713          	addi	a4,a4,8
    80007eb8:	ff173c23          	sd	a7,-8(a4)
    80007ebc:	ff0798e3          	bne	a5,a6,80007eac <__memmove+0x68>
    80007ec0:	ff867713          	andi	a4,a2,-8
    80007ec4:	02071793          	slli	a5,a4,0x20
    80007ec8:	0207d793          	srli	a5,a5,0x20
    80007ecc:	00f585b3          	add	a1,a1,a5
    80007ed0:	40e686bb          	subw	a3,a3,a4
    80007ed4:	00f507b3          	add	a5,a0,a5
    80007ed8:	06e60463          	beq	a2,a4,80007f40 <__memmove+0xfc>
    80007edc:	0005c703          	lbu	a4,0(a1)
    80007ee0:	00e78023          	sb	a4,0(a5)
    80007ee4:	04068e63          	beqz	a3,80007f40 <__memmove+0xfc>
    80007ee8:	0015c603          	lbu	a2,1(a1)
    80007eec:	00100713          	li	a4,1
    80007ef0:	00c780a3          	sb	a2,1(a5)
    80007ef4:	04e68663          	beq	a3,a4,80007f40 <__memmove+0xfc>
    80007ef8:	0025c603          	lbu	a2,2(a1)
    80007efc:	00200713          	li	a4,2
    80007f00:	00c78123          	sb	a2,2(a5)
    80007f04:	02e68e63          	beq	a3,a4,80007f40 <__memmove+0xfc>
    80007f08:	0035c603          	lbu	a2,3(a1)
    80007f0c:	00300713          	li	a4,3
    80007f10:	00c781a3          	sb	a2,3(a5)
    80007f14:	02e68663          	beq	a3,a4,80007f40 <__memmove+0xfc>
    80007f18:	0045c603          	lbu	a2,4(a1)
    80007f1c:	00400713          	li	a4,4
    80007f20:	00c78223          	sb	a2,4(a5)
    80007f24:	00e68e63          	beq	a3,a4,80007f40 <__memmove+0xfc>
    80007f28:	0055c603          	lbu	a2,5(a1)
    80007f2c:	00500713          	li	a4,5
    80007f30:	00c782a3          	sb	a2,5(a5)
    80007f34:	00e68663          	beq	a3,a4,80007f40 <__memmove+0xfc>
    80007f38:	0065c703          	lbu	a4,6(a1)
    80007f3c:	00e78323          	sb	a4,6(a5)
    80007f40:	00813403          	ld	s0,8(sp)
    80007f44:	01010113          	addi	sp,sp,16
    80007f48:	00008067          	ret
    80007f4c:	02061713          	slli	a4,a2,0x20
    80007f50:	02075713          	srli	a4,a4,0x20
    80007f54:	00e587b3          	add	a5,a1,a4
    80007f58:	f0f574e3          	bgeu	a0,a5,80007e60 <__memmove+0x1c>
    80007f5c:	02069613          	slli	a2,a3,0x20
    80007f60:	02065613          	srli	a2,a2,0x20
    80007f64:	fff64613          	not	a2,a2
    80007f68:	00e50733          	add	a4,a0,a4
    80007f6c:	00c78633          	add	a2,a5,a2
    80007f70:	fff7c683          	lbu	a3,-1(a5)
    80007f74:	fff78793          	addi	a5,a5,-1
    80007f78:	fff70713          	addi	a4,a4,-1
    80007f7c:	00d70023          	sb	a3,0(a4)
    80007f80:	fec798e3          	bne	a5,a2,80007f70 <__memmove+0x12c>
    80007f84:	00813403          	ld	s0,8(sp)
    80007f88:	01010113          	addi	sp,sp,16
    80007f8c:	00008067          	ret
    80007f90:	02069713          	slli	a4,a3,0x20
    80007f94:	02075713          	srli	a4,a4,0x20
    80007f98:	00170713          	addi	a4,a4,1
    80007f9c:	00e50733          	add	a4,a0,a4
    80007fa0:	00050793          	mv	a5,a0
    80007fa4:	0005c683          	lbu	a3,0(a1)
    80007fa8:	00178793          	addi	a5,a5,1
    80007fac:	00158593          	addi	a1,a1,1
    80007fb0:	fed78fa3          	sb	a3,-1(a5)
    80007fb4:	fee798e3          	bne	a5,a4,80007fa4 <__memmove+0x160>
    80007fb8:	f89ff06f          	j	80007f40 <__memmove+0xfc>

0000000080007fbc <__putc>:
    80007fbc:	fe010113          	addi	sp,sp,-32
    80007fc0:	00813823          	sd	s0,16(sp)
    80007fc4:	00113c23          	sd	ra,24(sp)
    80007fc8:	02010413          	addi	s0,sp,32
    80007fcc:	00050793          	mv	a5,a0
    80007fd0:	fef40593          	addi	a1,s0,-17
    80007fd4:	00100613          	li	a2,1
    80007fd8:	00000513          	li	a0,0
    80007fdc:	fef407a3          	sb	a5,-17(s0)
    80007fe0:	fffff097          	auipc	ra,0xfffff
    80007fe4:	b3c080e7          	jalr	-1220(ra) # 80006b1c <console_write>
    80007fe8:	01813083          	ld	ra,24(sp)
    80007fec:	01013403          	ld	s0,16(sp)
    80007ff0:	02010113          	addi	sp,sp,32
    80007ff4:	00008067          	ret

0000000080007ff8 <__getc>:
    80007ff8:	fe010113          	addi	sp,sp,-32
    80007ffc:	00813823          	sd	s0,16(sp)
    80008000:	00113c23          	sd	ra,24(sp)
    80008004:	02010413          	addi	s0,sp,32
    80008008:	fe840593          	addi	a1,s0,-24
    8000800c:	00100613          	li	a2,1
    80008010:	00000513          	li	a0,0
    80008014:	fffff097          	auipc	ra,0xfffff
    80008018:	ae8080e7          	jalr	-1304(ra) # 80006afc <console_read>
    8000801c:	fe844503          	lbu	a0,-24(s0)
    80008020:	01813083          	ld	ra,24(sp)
    80008024:	01013403          	ld	s0,16(sp)
    80008028:	02010113          	addi	sp,sp,32
    8000802c:	00008067          	ret

0000000080008030 <console_handler>:
    80008030:	fe010113          	addi	sp,sp,-32
    80008034:	00813823          	sd	s0,16(sp)
    80008038:	00113c23          	sd	ra,24(sp)
    8000803c:	00913423          	sd	s1,8(sp)
    80008040:	02010413          	addi	s0,sp,32
    80008044:	14202773          	csrr	a4,scause
    80008048:	100027f3          	csrr	a5,sstatus
    8000804c:	0027f793          	andi	a5,a5,2
    80008050:	06079e63          	bnez	a5,800080cc <console_handler+0x9c>
    80008054:	00074c63          	bltz	a4,8000806c <console_handler+0x3c>
    80008058:	01813083          	ld	ra,24(sp)
    8000805c:	01013403          	ld	s0,16(sp)
    80008060:	00813483          	ld	s1,8(sp)
    80008064:	02010113          	addi	sp,sp,32
    80008068:	00008067          	ret
    8000806c:	0ff77713          	andi	a4,a4,255
    80008070:	00900793          	li	a5,9
    80008074:	fef712e3          	bne	a4,a5,80008058 <console_handler+0x28>
    80008078:	ffffe097          	auipc	ra,0xffffe
    8000807c:	6dc080e7          	jalr	1756(ra) # 80006754 <plic_claim>
    80008080:	00a00793          	li	a5,10
    80008084:	00050493          	mv	s1,a0
    80008088:	02f50c63          	beq	a0,a5,800080c0 <console_handler+0x90>
    8000808c:	fc0506e3          	beqz	a0,80008058 <console_handler+0x28>
    80008090:	00050593          	mv	a1,a0
    80008094:	00001517          	auipc	a0,0x1
    80008098:	49450513          	addi	a0,a0,1172 # 80009528 <CONSOLE_STATUS+0x518>
    8000809c:	fffff097          	auipc	ra,0xfffff
    800080a0:	afc080e7          	jalr	-1284(ra) # 80006b98 <__printf>
    800080a4:	01013403          	ld	s0,16(sp)
    800080a8:	01813083          	ld	ra,24(sp)
    800080ac:	00048513          	mv	a0,s1
    800080b0:	00813483          	ld	s1,8(sp)
    800080b4:	02010113          	addi	sp,sp,32
    800080b8:	ffffe317          	auipc	t1,0xffffe
    800080bc:	6d430067          	jr	1748(t1) # 8000678c <plic_complete>
    800080c0:	fffff097          	auipc	ra,0xfffff
    800080c4:	3e0080e7          	jalr	992(ra) # 800074a0 <uartintr>
    800080c8:	fddff06f          	j	800080a4 <console_handler+0x74>
    800080cc:	00001517          	auipc	a0,0x1
    800080d0:	55c50513          	addi	a0,a0,1372 # 80009628 <digits+0x78>
    800080d4:	fffff097          	auipc	ra,0xfffff
    800080d8:	a68080e7          	jalr	-1432(ra) # 80006b3c <panic>
	...
