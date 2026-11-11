.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 56
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and cx, -79
jmp .bb_0.1
.bb_0.1:
lea ecx, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
lea ax, qword ptr [rbx + rdx + 42]
sub al, 9
and cl, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
