.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
cmp rax, 1189904463
inc eax
and bx, -118
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dl, -105
sub sil, -18
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sub sil, -18
sub dl, dil
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
