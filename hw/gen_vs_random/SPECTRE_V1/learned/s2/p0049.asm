.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -65
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
adc edx, 8
and al, sil
mov bl, al
adc bl, dl
test rax, rdi
adc dil, 22
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
xor ax, 913
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
