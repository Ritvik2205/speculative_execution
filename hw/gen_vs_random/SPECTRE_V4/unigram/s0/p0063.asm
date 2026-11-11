.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
add al, -32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rax]
add eax, edi
sub dil, dil
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
or bx, 0b1000000000000000 # instrumentation
bsr ax, bx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
xor si, dx
movzx edi, dil
test cl, sil
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
xchg edi, ecx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edi, esi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
adc edi, 64
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 30
not si
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
cmovp edi, eax
xor ax, cx
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 69
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
adc sil, sil
and rax, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rax]
sbb sil, 108
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
mov rdi, rsi
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rsi
cmp rcx, 32
add rdx, rbx
add dil, -71 # instrumentation
adc dil, dl
cmovnz si, ax
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 44
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdx]
movzx edx, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
