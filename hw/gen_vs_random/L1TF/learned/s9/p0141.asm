.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
or rax, 1808026647
test al, bl
jmp .bb_0.1
.bb_0.1:
cmp rcx, 15
and al, -68
sub rax, -1628299544
add dl, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
