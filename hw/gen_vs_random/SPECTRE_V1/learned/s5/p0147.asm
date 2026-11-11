.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add al, -44
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
sbb cl, cl
cmp al, sil
cmp al, dl
sbb ecx, 86
adc bl, 102
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
or sil, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
