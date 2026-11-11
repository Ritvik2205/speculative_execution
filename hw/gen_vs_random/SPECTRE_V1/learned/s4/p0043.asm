.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -18
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, al
and ax, -22629
add dil, -75
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
cmp rdx, -19
sbb edi, 40
or ax, 19104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
