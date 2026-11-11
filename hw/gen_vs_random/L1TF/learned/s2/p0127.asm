.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb dl, dl
and al, cl
and di, 31
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xor dil, -42
adc cl, dl
jmp .bb_0.2
.bb_0.2:
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
