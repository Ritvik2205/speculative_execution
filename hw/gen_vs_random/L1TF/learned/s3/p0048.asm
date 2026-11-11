.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 26813
and ax, 7954
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
add rcx, 7
sub al, cl
add al, -80
lea cx, qword ptr [rsi + rax + 90]
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
and dil, dl
xor dl, sil
test rax, rdx
test edx, 1891691791
adc dil, 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
