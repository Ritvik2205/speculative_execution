.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rdi]
test dl, -105
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
cmovz eax, ebx
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
cmp rdx, -19
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 60
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
lea rdi, qword ptr [rcx + rdi + 85]
xor al, cl
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
