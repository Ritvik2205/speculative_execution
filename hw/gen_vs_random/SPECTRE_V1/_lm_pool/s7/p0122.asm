.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp cl, dil
inc esi
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
xchg rdx, rsi
adc eax, 1725322202
sub al, dl
sbb al, 104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
