.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ecx, edx
add bl, 56 # instrumentation
cmovle rcx, rbx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
dec dil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
cmovnb eax, esi
adc ebx, 117
or cx, 76
adc rcx, 76
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
cmp sil, dil
movzx edi, bl
dec rdx
add al, al
cmp cl, dl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
and cl, dl
cmovp di, ax
test al, bl
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
xor dil, sil
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
xor cl, sil
test ecx, 52
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
or cl, 92
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 41
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 66
mov rsi, 56
or sil, 72
and rsi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rax
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 26
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
imul bx
sbb ebx, eax
and cl, 58
movzx edx, sil
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
sbb sil, 108
dec dil
cmovp esi, ebx
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
