.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
cmp eax, 100
xor dil, dil
bt eax, 78
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg al, sil
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and cl, 86
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
setle al
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
