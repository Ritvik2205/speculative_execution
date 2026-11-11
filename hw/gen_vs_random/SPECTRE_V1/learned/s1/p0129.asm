.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdx, -19
sub dl, bl
sub cl, al
sub dl, -48
add dx, -103
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
add al, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
