.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 40
test dl, 84
add al, 93
sub sil, -99
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test al, -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
