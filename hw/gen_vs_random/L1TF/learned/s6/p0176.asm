.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 67 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
and cl, dil
and ax, 26813
add di, 31
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rbx]
sub al, 26
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
sub al, -47
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
or al, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
