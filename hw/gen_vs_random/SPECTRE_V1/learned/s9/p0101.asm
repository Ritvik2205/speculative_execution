.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 70
lea ax, qword ptr [rax]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -28
xor cl, -40
xor rax, rcx
and dil, al
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .exit_0
.bb_0.2:
xor sil, dil
and rdi, rcx
sub al, dil
mov al, cl
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
