.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, cx
mov cl, dil
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dl, -7
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 2
inc edi
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
lea bx, qword ptr [rcx + rax]
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
test bl, -8
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
