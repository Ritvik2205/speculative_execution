.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 67 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
test dl, -105
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, al
sbb dl, dil
add dil, -75
or al, cl
test dil, -116
sbb al, cl
sbb edi, 31
cmp bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
