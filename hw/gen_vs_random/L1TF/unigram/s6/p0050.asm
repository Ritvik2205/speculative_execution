.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc edi, edi
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
lea rdx, qword ptr [rdx + rsi + 62]
adc cl, -34
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
add bl, 62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
imul al
sub al, -3
mov bx, ax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
add dx, 57
setb dl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
