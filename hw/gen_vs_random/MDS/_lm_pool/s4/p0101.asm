.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
xor cl, -13
and esi, 14
xor dil, -3
xor al, 8
or al, dil
xor rcx, 71
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
test al, -81
test edi, -1252846009
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
