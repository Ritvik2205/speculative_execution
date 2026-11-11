.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
cmp eax, 123533400
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and cl, 24
adc sil, 80
setb dil
xor dl, 19
test al, -82
cmovle rax, rbx
cmp cl, 57
adc bl, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
