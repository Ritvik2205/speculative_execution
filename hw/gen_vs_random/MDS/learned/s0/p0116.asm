.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
test al, -81
test bl, cl
xor dl, -19
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
xor sil, -15
test dil, -80
xor cl, bl
and rsi, 99
or rax, 52
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
test dl, -85
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
