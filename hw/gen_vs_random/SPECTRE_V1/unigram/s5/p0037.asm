.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], dx
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 43
bt eax, edi
test esi, 97
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -96 # instrumentation
cmovo eax, eax
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
cmovnbe dx, ax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
and rsi, 55
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], di
xor al, bl
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
