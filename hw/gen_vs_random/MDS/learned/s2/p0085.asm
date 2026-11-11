.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
test dil, -80
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 25
test sil, dl
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 88
bt di, ax
and dil, -62
and sil, 74
and di, 91
xor cl, dil
or dil, dil
or al, 30
or bx, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
