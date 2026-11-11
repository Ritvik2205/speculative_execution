.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
lea ax, qword ptr [rax]
add cl, -127
cmp al, dl
inc al
bt edi, ebx
and al, al
or al, dl
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
sub al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
