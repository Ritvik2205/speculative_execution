.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
sub bl, dil
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, dil
cmp al, cl
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
test al, -99
add sil, -68
btr cx, bx
lea dx, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
