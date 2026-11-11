.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -96
test dil, -51
or al, al
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
test dil, 46
and cl, al
test bx, 25542
xor dl, al
jmp .bb_0.1
.bb_0.1:
or al, 25
or dil, dil
xor al, -26
test rcx, -613256812
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
or al, -58
and al, bl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
