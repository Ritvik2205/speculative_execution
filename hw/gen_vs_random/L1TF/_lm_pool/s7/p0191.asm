.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
cmovno si, cx
and rdi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdi], 7
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
cmovnle rdi, rsi
xor al, bl
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
or al, -2
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
