.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
and dil, -93
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, al
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
and dil, -114
xchg esi, edx
sub bl, sil
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
or sil, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
