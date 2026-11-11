.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
test edx, 1479885278
cmp rax, -1547540200
xor ecx, 95
mov bl, 29
btc bx, 254
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
xchg dl, dl
cmovnb ax, ax
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
xor dil, 117
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
add sil, -10 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 20
and rbx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rbx]
xor al, cl
cmovnz rcx, rbx
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
add dl, sil
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 10
cmovnp eax, edx
bswap esi
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], si
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
btc cx, 19
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
cmovnz ebx, ebx
bt rcx, rbx
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], ax
xor cx, -80
add bl, -38
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], -104
sbb dl, bl
cmovle rsi, rdx
bt bx, ax
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], edi
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdi
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
or ax, 7381
mov edi, esi
xor cl, -73
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
cmovs bx, dx
add ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
