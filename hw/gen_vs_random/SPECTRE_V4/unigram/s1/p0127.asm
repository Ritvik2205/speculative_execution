.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
cmovnbe rbx, rax
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rax]
imul cl
cmovb edx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
test bl, dil
cmovnl dx, di
movzx ecx, dl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 39
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
cmovle rsi, rax
movzx cx, al
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
cmovnb cx, cx
sbb al, -47
add bx, 110
test rbx, 19
not rax
xor edx, 8
or sil, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rsi
imul eax
mul ax
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
sbb sil, bl
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], ax
cmovnbe ax, si
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
or edi, eax
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 29
xor rcx, 82
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
adc al, 36
sbb dl, dl
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
mul esi
cmovle rdi, rsi
imul cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
