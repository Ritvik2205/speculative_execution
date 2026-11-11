.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], cx
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
movzx cx, dil
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
neg ax
and rcx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rcx]
cmovp rax, rdx
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], edx
adc cl, 31
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
or sil, -47
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
cmovs si, ax
movzx rcx, dl
sub sil, sil
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and bl, bl
imul eax, edx
and al, -87
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rcx
mul cl
cmp ebx, edx
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
bswap ebx
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
mov sil, sil
sub dl, 107
movzx edi, sil
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
cmp bl, dil
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edi
xor al, dl
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 55
add sil, 87 # instrumentation
cmovz eax, esi
movzx di, dil
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 18
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdi
cmp rbx, -66
xor si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
