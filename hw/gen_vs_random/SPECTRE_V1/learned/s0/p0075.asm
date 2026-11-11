.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -36
xor rsi, 33
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jp .bb_0.4
jmp .exit_0
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
test sil, -31
xor cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
