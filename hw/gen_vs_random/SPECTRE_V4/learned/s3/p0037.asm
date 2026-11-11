.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 42
or di, 0b1000000000000000 # instrumentation
bsf si, di
sbb rsi, rdi
mul ax
sbb rax, 183833426
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
xor al, 56
btr rcx, 57
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
and bl, -49 # instrumentation
cmovno bx, dx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 51
adc eax, -1513455903
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
adc rdi, rdx
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
add al, 112 # instrumentation
setl dl
lea bx, qword ptr [rax + rdi]
add bl, bl
add al, bl
cmovnz di, di
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
bswap rbx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add ebx, 3
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 60
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
mov bl, sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rdi], edx
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
adc bl, sil
or bl, dl
cmovz rcx, rdi
lea si, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
mov cl, cl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
lea esi, qword ptr [rdx + rbx + 53]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
