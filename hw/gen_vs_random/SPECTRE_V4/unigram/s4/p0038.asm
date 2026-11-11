.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdx
test al, 80
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
and eax, -24
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
cmp dil, cl
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 6
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
xchg dl, dl
mul cl
movzx rcx, ax
inc sil
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
sub ebx, 30
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], di
xor bl, dl
add dl, 118 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 85
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
cmp dl, 91
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
movzx ecx, al
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rax
imul esi, ebx, 80
and rdx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
btc cx, 240
sub dil, sil
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
cmovl rcx, rbx
cmovnbe ebx, esi
add ecx, 10
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
add dl, 41
imul esi, eax
bts eax, eax
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
