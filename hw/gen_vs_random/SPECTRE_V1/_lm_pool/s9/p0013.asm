.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
xor cl, dl
test cl, -120
cmp edx, 44
and dil, 98
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
adc al, -82
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi], 84
sbb dl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
