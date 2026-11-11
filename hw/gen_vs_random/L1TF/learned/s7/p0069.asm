.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rsi]
and sil, bl
sub sil, -99
jmp .bb_0.1
.bb_0.1:
test dl, -37
add cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
