.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
mov eax, -1056201206
sbb di, -105
cmovle rcx, rbx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
or rbx, -107
cmovz edi, esi
add dl, al
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rax
xchg ebx, ebx
sbb dl, -62
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 90
cmp bx, 113
and rbx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
movzx rdi, al
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
cmp rsi, rdx
and dl, 126
and rsi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdi]
btr esi, 227
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rax]
mov bl, sil
bts rcx, 23
cmovnp eax, esi
imul rax, rax
or si, 0b1000000000000000 # instrumentation
bsr si, si
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 40
add dl, -8
add al, -7 # instrumentation
btc si, ax
add bl, -24 # instrumentation
cmovnbe bx, bx
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
or bl, 80
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
mov cl, -38
xor bl, 126
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
