.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
cmp rdi, 39
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb sil, cl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rbx
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, dl
lea cx, qword ptr [rbx + rdi + 22]
cmp cl, bl
xor al, al
sbb sil, cl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
