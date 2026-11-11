.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
test dl, 113
test bl, -8
and rax, -1128038253
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rax, -1877933118
cmp rdx, -19
btc di, dx
sub cx, 72
inc eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
