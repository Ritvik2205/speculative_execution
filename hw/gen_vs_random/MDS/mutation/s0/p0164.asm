.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 43
jmp .bb_0.1
.bb_0.1:
test cl, 62
test esi, 425331143
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
and dl, al
xor al, al
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
and sil, 74
test ax, 4430
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
