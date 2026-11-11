.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
xchg sil, dil
mov dil, bl
sub bl, dil
or bx, 9
xor cl, dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp eax, 692647572
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 36
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
add rdx, 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
