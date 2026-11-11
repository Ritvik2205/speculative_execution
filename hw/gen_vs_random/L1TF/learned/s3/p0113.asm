.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
add al, -102
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
xor ax, 32760
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rax]
and dil, sil
or al, -5
or al, -57
xor al, 89
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
or cl, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
