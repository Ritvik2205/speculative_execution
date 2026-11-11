.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -2
xor ax, -16696
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor bl, dl
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
or al, -22
and dl, dil
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
jmp .bb_0.1
.bb_0.1:
test dl, 9
bt ax, dx
and rbx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rbx]
and dx, 60
and cl, -71
xor sil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
