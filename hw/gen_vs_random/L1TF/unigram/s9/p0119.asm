.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 91
sbb al, bl
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
cmovz bx, cx
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 20
xor sil, bl
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
lea esi, qword ptr [rcx + rsi + 21]
and ax, dx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
add edi, 4
cmovnb di, ax
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
