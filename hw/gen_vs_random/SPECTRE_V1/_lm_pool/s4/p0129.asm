.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
add rax, -845342150
sub rax, -1628299544
neg ecx
lea rax, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
lea rdi, qword ptr [rcx + rdx + 85]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 57
sbb ebx, 44
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
add cl, cl
cmp sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
