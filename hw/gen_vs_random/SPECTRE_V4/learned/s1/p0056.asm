.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
sbb bl, dl
adc dl, bl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
sub ecx, 91
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
cmovnle eax, ecx
cmovnl ebx, esi
btr ecx, eax
cmovbe ax, si
movzx esi, si
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
or bl, al
and dl, bl
btc ax, si
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
and rbx, 69
sub al, 119
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
cmp al, 19
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 80
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
test bl, 0
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
cmovnp rsi, rsi
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 37
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax], 1
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
cmovnl rbx, rdx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
sbb al, sil
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 22
add rdi, rbx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 78
test ebx, -595096626
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
