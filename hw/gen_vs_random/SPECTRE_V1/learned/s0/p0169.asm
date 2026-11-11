.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
test edi, 53
test cl, -62
test dil, sil
cmp cl, sil
adc cl, -19
jb .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rcx]
sub rbx, -11
sbb sil, bl
movzx ax, cl
and bl, dil
cmp dil, -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
