.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, bx
sub bl, cl
add bl, dil
xor dil, al
sbb sil, -78
jmp .bb_0.1
.bb_0.1:
cmp dl, bl
sbb rdx, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
