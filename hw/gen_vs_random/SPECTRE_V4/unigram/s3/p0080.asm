.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 39
add cl, -77 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdi
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], esi
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
and bx, ax
sub dil, dl
imul edx, ecx, -116
adc sil, -31
bt dx, 193
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
btc rdx, rbx
and rbx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
xor cl, -101
add al, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 46
cmp rsi, 74
add rbx, 68
inc cl
cmovz rdx, rsi
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], sil
xor ebx, -62
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 30
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 40
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
add bl, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], esi
cmovo edx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
adc dil, dl
bswap eax
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 39
mul sil
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
sub cl, bl
xor cl, al
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], dil
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
