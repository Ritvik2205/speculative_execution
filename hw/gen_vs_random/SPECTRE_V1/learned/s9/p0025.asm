.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
test dil, -116
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
cmovnle rax, rcx
and bl, dil
xor rbx, rcx
lea ax, qword ptr [rdi + rcx + 15]
xor cl, 71
inc rbx
sub sil, -18
mov bl, cl
btc ax, dx
lea rax, qword ptr [rsi + rbx + 25]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
