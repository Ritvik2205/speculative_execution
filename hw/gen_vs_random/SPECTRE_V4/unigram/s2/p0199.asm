.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
adc al, -58
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 65
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
movzx cx, dil
dec rdx
cmovnp rsi, rsi
test esi, 100
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
test dx, bx
cmovo rdi, rdi
imul dl
xchg ebx, esi
and edi, 39
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
test al, 66
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
cmovs ebx, edx
sbb cl, 19
imul rsi
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
or bx, ax
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 43
and al, bl
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
bswap edi
add rdx, rax
cmovz esi, eax
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
cmovb eax, eax
or sil, 64
cmp dl, al
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rcx]
btc rax, rsi
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
sub rdx, rax
and dil, 96
sbb dil, dl
cmovb edx, edx
test dil, dil
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 55
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
