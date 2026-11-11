.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, dil
mov bl, sil
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
mov sil, cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
test sil, 97
sub dil, sil
bt eax, 78
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
and dl, -92
add dl, 47
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
