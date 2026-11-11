.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
sbb dil, -93
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add sil, 2
sub sil, -18
xor cl, al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
and dl, -92
test cl, -24
adc sil, -77
sbb al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
