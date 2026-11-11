.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
mov cl, dil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
xor bl, sil
sbb dil, cl
sbb bl, cl
add sil, dl
sub bx, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
