.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
mov bl, dl
sbb bl, dl
sub al, -66
mov bl, dl
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
neg rdi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 99
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 93
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
adc bl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
