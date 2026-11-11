.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, eax
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
xor cl, 71
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
adc bl, 102
and cl, 86
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
