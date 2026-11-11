.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rcx], si
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdx
adc cl, -19
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
cbw
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xchg ax, dx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rsi
lea cx, qword ptr [rbx + rdx + 50177]
setp bl
and ax, 23118
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
add bl, dil
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
