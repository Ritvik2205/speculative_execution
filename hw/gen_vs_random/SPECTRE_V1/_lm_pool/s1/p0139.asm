.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 14
lea di, qword ptr [rsi]
xchg rax, rdx
or cl, dil
lea rax, qword ptr [rcx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
loopne .bb_0.2
jmp .exit_0
.bb_0.2:
sub cl, sil
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
and dl, cl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
