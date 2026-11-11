.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, sil
jmp .bb_0.1
.bb_0.1:
or cl, 7
and sil, sil
test al, sil
or bl, -54
xor dil, -70
xor eax, 571592471
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and ax, -16061
test dil, al
or sil, cl
xor bx, 33
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
or al, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
