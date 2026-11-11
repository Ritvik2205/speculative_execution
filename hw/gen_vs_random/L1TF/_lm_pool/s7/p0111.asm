.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test al, -70
jmp .bb_0.2
.bb_0.2:
test al, -84
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
sub dl, -78
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
adc al, -103
jmp .bb_0.3
.bb_0.3:
add bl, 89 # instrumentation
sbb al, bl
and rsi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rsi]
sub al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
