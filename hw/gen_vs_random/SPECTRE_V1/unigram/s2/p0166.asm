.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
and rdi, 32
test rdx, rax
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
or bl, al
add cl, -127
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
not di
setnz cl
cmovp dx, dx
add cl, 32 # instrumentation
cmovnbe rax, rdx
lea rbx, qword ptr [rdi + rax]
btr rsi, rdx
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
