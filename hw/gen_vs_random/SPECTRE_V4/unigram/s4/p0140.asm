.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ax, 32
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rax
cmp bx, si
adc cl, al
movzx ebx, bx
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], 91
and rdi, -2
xor al, 102
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], edx
cmovo rbx, rbx
cmovb ecx, ebx
cmovb ecx, edx
xchg ebx, esi
add rax, 5
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
sbb sil, 108
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
adc edi, 96
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmovz ecx, ebx
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rbx]
movzx edi, al
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
add sil, sil
add rsi, rdi
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], dx
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
add dl, -99 # instrumentation
not eax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
cmovb rdx, rbx
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 17
and rdi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdi]
btr rsi, rdx
and rbx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 17
sub dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
