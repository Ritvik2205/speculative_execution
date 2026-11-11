.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
add eax, -55403434
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
lea ax, qword ptr [rbx]
cmovno di, ax
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
