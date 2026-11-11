.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
xor dil, -37
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
adc cl, dil
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
sub cl, sil
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
test al, -71
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
mov bl, -31
lea ax, qword ptr [rdi + rcx]
lea rdx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
