.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -126
xor al, dil
xor edi, 13
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
test dl, cl
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
xor ebx, 74
and cl, al
xor al, -4
jmp .bb_0.1
.bb_0.1:
test esi, 1857129931
test dl, 9
test al, dl
and rax, -1701787862
bt ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
