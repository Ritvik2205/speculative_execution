.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
xchg edi, ecx
sbb dl, cl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
test al, -99
test dl, -105
sbb sil, bl
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 14
lea edi, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
