.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
adc al, -92
test al, 34
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
cmp eax, 100
sbb al, bl
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
