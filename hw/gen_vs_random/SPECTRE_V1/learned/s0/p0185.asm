.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdx, -19
add al, 3
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 18
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
