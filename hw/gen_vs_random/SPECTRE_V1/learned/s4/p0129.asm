.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, -99
or al, 100
lea ecx, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
sbb bl, cl
test al, -126
xor al, 54
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
or edi, 38
and dl, -92
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
adc cl, -81
xor eax, -105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
