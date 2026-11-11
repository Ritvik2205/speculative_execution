.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 35
xor rbx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
bswap esi
adc ebx, 51
or bl, bl
bt rcx, rcx
sbb si, cx
btc rcx, rdx
or al, -19
mul dil
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
movzx cx, bl
cmovno rdx, rdi
sbb al, dl
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
xor cl, 13
bt esi, edx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], eax
and cl, -101
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
movsx dx, cl
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], bx
imul esi, edi
test edi, -2098143765
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
add rcx, -61
bts di, 30
xor al, 57
bts rsi, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
sub edx, -122
imul rdx, rsi
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rax, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rax]
mul edx
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
sbb cl, 35
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
cmovnb eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
