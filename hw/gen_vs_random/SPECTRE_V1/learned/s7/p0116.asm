.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
add rdx, 95
lea rdi, qword ptr [rdx + rbx + 7]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
lea bx, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
sbb dil, cl
or cl, -62
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
lea rax, qword ptr [rbx + rcx]
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
