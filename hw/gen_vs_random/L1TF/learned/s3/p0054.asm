.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
jmp .bb_0.1
.bb_0.1:
cmp ebx, 68
and dl, cl
and dl, al
jmp .bb_0.2
.bb_0.2:
lea bx, qword ptr [rdx]
sub bl, al
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
jmp .bb_0.6
.bb_0.6:
jmp .bb_0.7
.bb_0.7:
and eax, -409673666
xchg esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
