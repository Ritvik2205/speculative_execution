.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 25351
adc sil, -77
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
btc ax, bx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, cl
sub al, 63
sub cl, dl
lea rcx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
sub cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
