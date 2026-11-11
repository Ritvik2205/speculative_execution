.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -51
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
xor cl, 15
xor cl, 15
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
test bl, dl
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
or dl, -89
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test cl, dl
test sil, 17
jmp .bb_0.2
.bb_0.2:
xor cl, 24
or sil, cl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
