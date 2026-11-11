.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, -101
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
test dil, 20
cmovnb ebx, eax
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
sub dl, 43
test ax, -5170
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -97
cmovp ax, di
xor ax, 25554
xor cl, cl
or cl, bl
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 29
not dl
bts rax, 157
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 2
xor bl, dl
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
cmovnl rax, rax
movzx ecx, dil
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
xor ax, 25554
cmovnbe rax, rdx
movzx ecx, dl
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
bt esi, edi
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], 46
test dil, sil
sub ecx, ebx
sbb al, 123
test edi, -1249897727
movzx edx, dil
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
