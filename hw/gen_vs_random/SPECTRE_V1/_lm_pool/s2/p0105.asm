.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
xor al, 78
cmp rdi, 21
or bl, cl
cmp dil, cl
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
and sil, 11
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
