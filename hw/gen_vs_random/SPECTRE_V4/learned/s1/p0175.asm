.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
and dl, 126
adc bl, 127
add dil, bl
xor bl, al
adc dl, cl
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
dec al
not bl
cmp sil, -100
sub dl, -16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
