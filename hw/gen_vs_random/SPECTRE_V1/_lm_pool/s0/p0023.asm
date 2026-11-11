.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub bl, -19
add sil, sil
lea si, qword ptr [rbx + rcx + 31]
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
test dil, -116
and dil, sil
test dl, -7
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
sbb sil, -78
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
