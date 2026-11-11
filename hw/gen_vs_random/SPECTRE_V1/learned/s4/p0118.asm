.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -1
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test dil, bl
sub ax, -16648
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
