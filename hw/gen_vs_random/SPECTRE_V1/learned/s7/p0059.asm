.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 98
cmp eax, 100
setns sil
or al, 19
sub dl, -12
and bl, bl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
not dil
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
test al, cl
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
test al, -75
or al, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
