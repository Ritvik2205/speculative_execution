.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 86
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, 87
cmp cl, bl
xor rbx, rdx
sub rsi, 97
lea rax, qword ptr [rcx + rsi]
xor dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
