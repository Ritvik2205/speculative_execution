.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, sil
sbb sil, -78
lea rsi, qword ptr [rcx + rbx]
cmovno si, dx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 62
adc al, dl
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
lea dx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 62
lea eax, qword ptr [rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
