.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -18
setp dl
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and dl, -92
jle .bb_0.2
jmp .exit_0
.bb_0.2:
sbb dl, dil
sbb al, dl
add dil, al
lea ecx, qword ptr [rax + rax + 74]
add edi, -91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
