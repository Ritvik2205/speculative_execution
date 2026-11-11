.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
adc dl, 80
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub sil, -18
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
lea ax, qword ptr [rdi]
inc edx
and sil, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
