.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
add cl, 8 # instrumentation
adc al, dl
add bl, -72
add si, 4
and rdi, -2
mov rsi, rdx
add eax, -1796699558
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
imul cx, dx
sub cl, 116
xor dil, 2
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
not rsi
test dl, 19
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rax]
cmp eax, -92285311
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
cmp rdx, 88
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 31
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
cmovnbe esi, eax
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
add ax, -15653
xor dil, 67
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 64
cmovnle cx, cx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
sub al, 50
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
adc ebx, 117
xor dx, ax
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
adc edx, 29
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and dil, 96
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 29
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
