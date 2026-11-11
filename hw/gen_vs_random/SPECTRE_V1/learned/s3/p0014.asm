.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -18
and al, -54
sbb al, -114
and dl, cl
add dil, sil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
add al, -47
test ecx, 71
test rcx, -1420345926
and sil, dil
xor al, -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
