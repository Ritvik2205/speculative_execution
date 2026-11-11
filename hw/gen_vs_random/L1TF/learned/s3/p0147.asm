.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
sbb dl, -26
adc bl, -14
sub dl, -34
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
sbb cl, dl
add bl, dil
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
