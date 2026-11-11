.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 99
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor dil, al
test dil, dl
xor dl, cl
and dil, -39
or ax, 127
or dl, dl
and dl, -73
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
or bl, sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
btc cx, 115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
