.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
xor cl, dil
test rax, 1000448998
xor cl, 98
test dl, 48
xor al, dil
and ax, -122
xor dil, 81
or bl, -52
jmp .bb_0.1
.bb_0.1:
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
