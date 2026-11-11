.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
adc al, -61
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
or si, 62
sub cl, -49
or dil, -113
lea dx, qword ptr [rax + rdi + 10]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
