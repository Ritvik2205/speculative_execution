.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdi
or esi, 2
cmovnle ecx, eax
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 100
and edx, 7
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], ax
adc dil, al
sbb bx, 53
sbb al, sil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 45
xor al, -2
cmovnp rdx, rdx
cmovnbe di, si
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 40
add rsi, 2
imul si, di
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 24
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 82
test sil, 77
sbb dil, 8
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 12
and dx, 1
inc di
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
cmovnp cx, si
xchg al, al
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
and al, bl
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
or bl, 21
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 83
sub eax, ebx
add cl, 122 # instrumentation
cmovz rdi, rbx
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
bts ebx, ebx
cmovnz ecx, eax
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add cl, -10 # instrumentation
cmovnbe ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
