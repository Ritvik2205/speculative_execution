.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ebx, 228
test sil, dl
and rbx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rbx]
btc ax, 22
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 94
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rbx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rbx]
movsx ecx, dx
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, di
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 58
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 16
btc bx, si
and dil, dl
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
add al, 110 # instrumentation
movsx di, al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
add dl, -75 # instrumentation
adc dl, 15
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
or al, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
add sil, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
xor dil, 11
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rsi], eax
cmovnp rsi, rax
add bl, -75 # instrumentation
adc bl, 25
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
cmovp edi, edi
add dx, -90
mul cl
add dl, -39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
bswap rax
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 28
cmp dl, sil
cmovz esi, eax
dec cl
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
