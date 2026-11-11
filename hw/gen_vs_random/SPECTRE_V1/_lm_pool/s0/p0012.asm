.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -47
lea rdi, qword ptr [rdx]
or bl, cl
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
btc bx, di
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xchg rcx, rax
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
sub dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
