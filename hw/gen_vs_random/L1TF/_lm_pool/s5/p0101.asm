.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, eax
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
sub cl, -49
or al, -2
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and sil, sil
jmp .bb_0.1
.bb_0.1:
add dl, -52 # instrumentation
adc cx, 73
xor cl, 89
xor al, 16
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and al, -68
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
