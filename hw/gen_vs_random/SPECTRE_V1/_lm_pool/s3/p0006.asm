.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 67
imul al
sub bl, -19
and dl, dil
sub cl, sil
and al, dil
inc edx
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
sub rax, -1628299544
cmp al, 23
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
