.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, cl
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and al, dl
and bl, 124
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
adc bl, 88
and al, 33
xor ax, 913
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
