.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], bx
test dl, 113
sbb edx, -8
adc bl, 88
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
cmp al, 53
adc dil, 7
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
or ax, -114
inc ecx
adc al, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
