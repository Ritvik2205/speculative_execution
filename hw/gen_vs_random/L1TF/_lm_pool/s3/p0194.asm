.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
and cl, sil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and al, dl
and dil, -22
jmp .bb_0.1
.bb_0.1:
adc bx, bx
and cl, 53
xor ax, 34
jmp .bb_0.2
.bb_0.2:
xchg bx, ax
xor dl, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
cmovnbe rax, rdi
and di, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
