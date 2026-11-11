.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
adc al, -82
lea rax, qword ptr [rcx + rdx]
sub cl, -47
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and al, -54
inc eax
sub dl, -12
sbb ebx, 95
adc bl, -76
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
