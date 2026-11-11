.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
lea di, qword ptr [rdi]
and rax, -175411684
lea rsi, qword ptr [rax + rdi]
jmp .bb_0.1
.bb_0.1:
add cl, -127
test bl, -8
sub si, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
