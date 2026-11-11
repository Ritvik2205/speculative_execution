.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
cmp bl, dil
lea ax, qword ptr [rcx]
sbb dl, dl
and sil, 52
mov dil, sil
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
xor eax, 55
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, -6
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
lea cx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
