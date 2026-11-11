.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
and sil, dl
cmovz esi, edx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 11
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 34
not ecx
sbb dl, dil
dec rdi
sbb al, -47
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and ecx, 87
neg rsi
cmovnbe dx, di
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
not si
cmovnb esi, edi
and eax, -37
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
and dl, al
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
imul sil
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and bl, -63
sbb di, -76
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 80
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 100
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
imul cl
xor sil, bl
or sil, 19
test eax, -558243208
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
xor dl, al
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
bswap edi
cmovnbe dx, cx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rdx
cmp cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
