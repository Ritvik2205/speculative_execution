.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
or si, 35
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 88
xor al, 56
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 65
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
xor rax, 86
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
xor dil, dl
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
cmovnb di, di
cmovle si, si
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and cl, sil
sub al, 98
and dl, sil
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 32
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
sub edi, eax
cmp rax, -227205962
add dl, 41
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], ax
add dl, 31 # instrumentation
cmovnl si, si
and rdx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
xor eax, -437098167
not dx
and cl, dl
adc ebx, 117
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 95
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
