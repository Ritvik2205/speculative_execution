.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -19
test al, 59
imul cx, si, 34
sbb dl, cl
cmovle cx, bx
cmp bl, cl
xor bl, cl
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
adc bl, 88
sub al, -66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
