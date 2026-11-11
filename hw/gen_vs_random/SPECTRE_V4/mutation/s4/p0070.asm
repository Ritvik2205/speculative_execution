.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
bts esi, 241
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 106 # instrumentation
cmovnp rdi, rsi
dec rbx
btc dx, 16
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
not si
sbb al, 32
cmovnbe rcx, rcx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
sbb al, -62
cmovs rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
bt ebx, edi
cmp al, -23
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
cmp dil, -124
sbb eax, 4
sbb di, -76
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
cmovnbe eax, edi
or bx, dx
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
test al, sil
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
xor sil, 56
cmovnbe dx, ax
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
cmp rax, -1102558854
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
