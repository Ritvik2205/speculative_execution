.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and si, 82
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
lea rdi, qword ptr [rdx + rcx]
and dil, dil
add dl, bl
add ecx, 42
cmp ax, -11439
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
