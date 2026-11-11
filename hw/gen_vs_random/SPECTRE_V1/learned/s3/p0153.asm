.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -109
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
sub bl, dl
sbb bl, al
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 0
and dl, al
cmp dil, cl
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi]
or dil, dl
lea ebx, qword ptr [rsi + rsi + 65]
jl .bb_0.2
jmp .exit_0
.bb_0.2:
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
