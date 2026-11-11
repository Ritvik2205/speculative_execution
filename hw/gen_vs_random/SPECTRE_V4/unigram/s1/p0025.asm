.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
add rbx, 33
mov edi, edx
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
and bx, 45
add eax, 1255256879
xor cl, al
or al, al
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
test rdx, rcx
mov edi, ebx
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi]
sub bl, -89
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
adc sil, sil
test dil, -26
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
add ebx, esi
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
cmovo edi, ebx
movzx ax, al
and rbx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
adc al, -117
neg rbx
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
cmovnl dx, ax
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], eax
sub al, 11
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
bt dx, 81
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ebx
test cl, al
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv dil
inc cl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], -20642
xor rdx, 106
dec al
neg cl
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
