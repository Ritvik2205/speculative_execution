.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
add sil, 2
jle .bb_0.1
jmp .exit_0
.bb_0.1:
or al, 19
test al, -71
test dil, -116
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
sbb sil, dil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1194753120
adc al, -82
or al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
