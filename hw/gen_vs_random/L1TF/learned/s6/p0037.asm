.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
btc ax, bx
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
sub al, -97
test sil, 29
test dil, -126
jmp .bb_0.1
.bb_0.1:
adc eax, 457059541
and al, -68
xor edx, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
