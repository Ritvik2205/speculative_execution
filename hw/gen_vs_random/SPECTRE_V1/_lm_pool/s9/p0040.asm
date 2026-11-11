.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 124
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
sbb sil, -78
sub cl, bl
sbb bl, 79
or rbx, 95
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
add dl, dil
sbb bl, 79
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
