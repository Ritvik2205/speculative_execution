.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
add cl, 75 # instrumentation
sbb cl, dl
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], 89
cmp cl, cl
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
movsx rbx, al
cbw
adc ax, di
cmovs bx, si
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -26 # instrumentation
cmovnp bx, di
test al, 70
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
