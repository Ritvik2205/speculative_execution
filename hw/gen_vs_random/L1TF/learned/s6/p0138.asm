.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
cmp rax, 1138518729
sub al, -47
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
lea rax, qword ptr [rsi + rdx + 33]
jmp .bb_0.2
.bb_0.2:
sbb dl, bl
and di, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
