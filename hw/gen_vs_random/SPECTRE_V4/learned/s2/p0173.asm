.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
and sil, dl
sbb dl, bl
adc dl, bl
btc cx, dx
adc al, -58
not ecx
xor dx, bx
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
adc bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and dx, 1
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
not si
cmovnb esi, eax
cmovz eax, eax
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
bt cx, 111
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
movzx rax, sil
or ebx, eax
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 31
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor sil, dl
cmovle cx, ax
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], cx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
adc dil, dl
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 78
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
cmovns rdx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], ax
test esi, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
