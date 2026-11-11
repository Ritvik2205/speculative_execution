.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
btr eax, edx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
xor dil, 124
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and cl, dil
test bl, dl
and dil, dil
or bl, sil
test sil, 17
test ax, 18697
test al, 66
or sil, al
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
