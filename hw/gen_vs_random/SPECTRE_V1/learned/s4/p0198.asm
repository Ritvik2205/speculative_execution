.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
sub al, dil
sub rax, -1628299544
mov al, cl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
test dil, -116
cmovno bx, cx
add al, -44
cmovbe ebx, esi
and di, 64
sbb bl, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
