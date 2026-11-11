.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -98
dec al
cmp cx, 0
cmovz ecx, ebx
xor dl, -123
jmp .bb_0.1
.bb_0.1:
sbb eax, 40509622
add al, -3
sub dl, 107
test eax, -31785616
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
