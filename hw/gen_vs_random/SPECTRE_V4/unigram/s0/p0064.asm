.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rdi, dx
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
test cx, 19367
add cl, -9
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
or bl, 80
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
movzx esi, dx
or ecx, edx
xor dil, 37
bts dx, di
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 100
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], 40
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], eax
sub dil, sil
mov rax, -4627568876460436527
cmovl ecx, esi
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], 16
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
test al, dil
bswap rax
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 88
cmovb rsi, rax
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 2
xor sil, 63
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 92
cmovz ax, di
and rsi, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
imul dl
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 3
cmovnz cx, di
cmovbe rsi, rdx
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 99
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], 29
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 38
bt rax, rax
adc rsi, 82
sub cl, -51
movzx di, dl
neg dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
