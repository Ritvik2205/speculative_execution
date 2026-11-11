.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 3
adc dil, 95
cmp dil, dl
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
add al, -44
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
