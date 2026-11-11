.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 118 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
add ax, -16969
adc bl, 70
sets cl
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 31
cmp cl, 3
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rsi
not rdx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], -58
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi]
cbw
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 34
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 50
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
