.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
cmp rdx, -49
sbb al, 70
cmovno bx, ax
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
xor dil, 37
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
dec al
sbb cl, dil
cmp al, -53
or si, 85
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 111
xor cl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
