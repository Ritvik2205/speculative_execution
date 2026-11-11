.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edx, 28
adc rdi, 6
lea bx, qword ptr [rcx + rbx + 2101]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
adc eax, 34
test ax, 19339
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
and sil, dl
and bl, 87
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
add al, -14 # instrumentation
lea dx, qword ptr [rsi + rax]
xor dil, dil
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 75
bts rax, rsi
add sil, 118 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
