.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmp rdi, 38
sub al, dl
and cl, dil
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dx, -23
xchg cl, bl
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -105
sbb edx, 105
or bl, cl
bswap rax
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
cmp cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
