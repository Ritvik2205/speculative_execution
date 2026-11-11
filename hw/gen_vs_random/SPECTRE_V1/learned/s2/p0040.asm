.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -7
cmp bl, al
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
test sil, 13
test dl, 113
test dil, -116
and dil, 98
mov cl, al
jmp .bb_0.2
.bb_0.2:
bt edx, ecx
mov dil, bl
and rdi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdi]
sub bl, cl
mov dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
