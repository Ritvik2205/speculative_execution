.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -89
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
sub al, -66
sbb dil, -93
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
mov dil, al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
xor cl, al
adc bl, 102
sub dil, cl
or rsi, -14
xor al, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
