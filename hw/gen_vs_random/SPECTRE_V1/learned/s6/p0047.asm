.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
lea ax, qword ptr [rbx + rsi]
and cl, sil
or edx, 83
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
add dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
