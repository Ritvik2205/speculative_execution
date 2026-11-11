.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
cmp bx, 47
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and dl, -109
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, bl
cmp dil, sil
sub dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
