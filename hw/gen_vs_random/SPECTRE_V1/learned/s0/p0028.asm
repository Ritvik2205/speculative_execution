.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
cmp cl, sil
sbb al, -107
xor bl, bl
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
lea rax, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
sbb ecx, 61
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
not dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
