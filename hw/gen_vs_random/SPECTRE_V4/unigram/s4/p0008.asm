.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
xchg bx, ax
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
movzx bx, bl
test eax, -558243208
sub dl, al
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
movzx ecx, sil
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 25
xor dx, 82
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edi
cmovz si, si
bts edi, 167
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 10
and rbx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rbx]
bswap esi
xor rax, rdx
and dl, bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
add al, 122 # instrumentation
cmovns eax, esi
or ax, -12775
cmovz ecx, edi
add rdi, -94
cmovnz dx, di
mov cl, dl
test esi, 10
sbb rbx, rdi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 91
sbb al, al
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
and al, sil
and rdx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 93
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
xor bl, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
