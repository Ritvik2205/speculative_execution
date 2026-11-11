.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 0
bts rax, rcx
bts rax, 77
xor dl, -19
xor dil, 124
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
test dl, al
xor al, 115
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
test ebx, -2015966884
test cl, bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
