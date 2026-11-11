.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
sub rdx, rcx
adc sil, bl
test dil, -116
add dl, bl
cmp dl, bl
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
sub dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
