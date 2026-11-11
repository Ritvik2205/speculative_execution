.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 12 # instrumentation
cmovnb ebx, edx
sub di, dx
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
mov dl, 89
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
adc cl, -34
adc bl, -14
add dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
