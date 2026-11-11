.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
test dl, 9
or al, dl
xor dil, -124
cmovle cx, bx
test cl, bl
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
xor dl, bl
jmp .bb_0.1
.bb_0.1:
xor ax, -1005
bt dx, cx
test bl, 65
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rdi, 43
or dl, sil
or al, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
