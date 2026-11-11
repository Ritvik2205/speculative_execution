.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
bts rbx, rsi
xor bl, -88
test sil, bl
test cl, -18
xor sil, 110
xor sil, -46
or ax, 85
and bl, bl
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
or sil, al
and cl, 79
bt bx, dx
cmovnp rsi, rdi
test ax, 30932
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
