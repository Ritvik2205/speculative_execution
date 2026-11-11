.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -22629
and ax, 2806
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
sub al, cl
add al, -109
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and dil, bl
adc edx, 68
test rax, rdx
test edx, 91
sub dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
