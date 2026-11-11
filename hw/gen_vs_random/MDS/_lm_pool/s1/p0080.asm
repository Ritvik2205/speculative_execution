.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
xor dl, 34
xor al, dil
btr cx, di
xor cl, 24
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
or sil, al
test dl, -85
test sil, bl
test cl, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
