.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 78
adc bl, 86
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
neg rbx
jmp .bb_0.1
.bb_0.1:
neg dil
and sil, -90
lea bx, qword ptr [rsi + rbx + 40]
and dl, dil
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
or edx, 35
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
cmovb eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
