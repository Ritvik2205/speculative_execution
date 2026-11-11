.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
sbb sil, 24
add al, 27 # instrumentation
mov dl, bl
and rdi, 0b1111111111111 # instrumentation
not word ptr [r14 + rdi]
xchg bl, bl
xchg al, al
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 4
and dl, -104
sbb esi, 81
imul eax, ecx, -17
and sil, -84
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
btr dx, 209
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
btc edx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
mov bl, 29
cmovnbe eax, edx
xor cl, 88
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
not ax
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rax
sbb sil, -11
and al, dl
imul dl
movzx ebx, dil
or rcx, rbx
add sil, cl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
btc esi, 63
neg rdi
neg rax
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
cmovnz rbx, rax
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
add al, 74 # instrumentation
cmovle eax, ebx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rcx
test sil, -119
sub rax, rcx
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdx], cx
sub rbx, 101
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
add dl, 122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
