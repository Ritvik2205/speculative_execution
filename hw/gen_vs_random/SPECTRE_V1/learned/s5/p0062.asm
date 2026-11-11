.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rdx, -19
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
lea rdi, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
and dl, dl
adc bl, -76
adc dil, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
