.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb ebx, edi
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], ax
adc bl, 0
mov ebx, 817819255
cmovnp rbx, rax
xor cl, -15
and rcx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rcx]
cmp cl, dl
sbb bl, dil
cmovle bx, ax
imul rax, rsi, 63
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
btc rdx, 130
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
movsx si, al
or dil, 5
bts dx, cx
btc si, cx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], cx
cmp rbx, rcx
cmp bl, 12
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
cmovbe edx, eax
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ecx
cmovp rdx, rbx
mov rsi, 4368505613814921305
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 19
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], -65
cmp cl, dl
cmovnb rdi, rdx
adc al, -86
add bl, 54
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 30
adc cx, 89
and ax, 16313
bswap esi
cmp ax, 26170
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
adc ax, -22258
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
