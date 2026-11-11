.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], eax
xchg si, dx
xchg rdi, rax
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
sbb esi, 23
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
sub si, cx
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], edx
or al, dil
imul rbx, rdx
sbb sil, 108
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and dil, sil
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
cmovb ax, ax
imul rsi, rdi, 77
adc ebx, 117
cmovnle rcx, rcx
sub cl, dl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
cmovns bx, ax
cmovo rax, rax
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], cx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
test bl, dil
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
btc rbx, 28
cmovnbe rsi, rbx
xor bl, 93
sub eax, -523763262
add cl, -42 # instrumentation
adc dil, al
cmp di, ax
imul eax
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rsi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
cmp al, cl
sbb cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
