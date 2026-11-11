.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 99
test dl, 27
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
or sil, -78
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 31
and dil, -39
xor si, 80
or bl, al
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
or sil, al
xor dl, -59
or al, dil
jmp .bb_0.1
.bb_0.1:
test dl, dil
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
