.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
add dil, 88
sub al, -75
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
or cl, cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
imul rbx
lea ax, qword ptr [rbx + rdi + 73]
xor dl, 19
xor al, dil
cmovbe esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
