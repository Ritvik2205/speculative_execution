.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -82
and al, -23
dec dl
sbb al, sil
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
or bx, 9
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
adc bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
