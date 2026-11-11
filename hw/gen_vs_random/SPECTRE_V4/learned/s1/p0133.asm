.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
neg bl
test dl, -125
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and al, bl
xor sil, dil
sbb dil, 58
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
