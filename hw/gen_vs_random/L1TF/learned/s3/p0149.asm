.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 12 # instrumentation
cmovnb ecx, edi
and ax, 26813
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
test dl, -37
add cl, dl
adc cl, -34
lea rdi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
