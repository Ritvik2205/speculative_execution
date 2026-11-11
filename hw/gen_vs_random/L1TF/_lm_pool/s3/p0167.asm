.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -78
or al, -48
xor al, 38
and al, -68
or al, -57
sub rdx, 71
sub dl, 105
jmp .bb_0.1
.bb_0.1:
and eax, -409673666
jmp .bb_0.2
.bb_0.2:
cmp ax, -31327
lea bx, qword ptr [rax + rdi + 25]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
