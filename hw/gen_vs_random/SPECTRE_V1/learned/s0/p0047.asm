.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
add al, -65
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
adc bl, -76
sub dil, al
cmp ax, 7452
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
