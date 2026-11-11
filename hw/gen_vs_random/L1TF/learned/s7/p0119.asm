.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -2
cmp rcx, 84
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
xor al, sil
xor cl, 89
jmp .bb_0.1
.bb_0.1:
test al, -32
sub bl, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
