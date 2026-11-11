.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
xor rax, 376589024
lea rbx, qword ptr [rcx + rsi + 84]
sub al, dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
lea rax, qword ptr [rcx]
sbb dl, 127
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdx]
adc bl, dl
and al, -54
or ebx, -124
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
