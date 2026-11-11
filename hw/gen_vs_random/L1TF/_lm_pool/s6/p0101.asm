.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 8
test dl, -37
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
btc bx, si
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jno .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rcx]
and sil, dil
and cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
