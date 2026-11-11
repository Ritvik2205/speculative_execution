.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
cmp ebx, -33
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi], 25
or ebx, -124
add al, 10
sbb dl, cl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
lea ax, qword ptr [rdx + rdi + 28]
adc dil, 94
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
bt eax, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
