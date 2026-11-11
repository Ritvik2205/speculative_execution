.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
mul ax
btr bx, 42
and rdx, 84
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 7
add cl, bl
test ebx, 92
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], edx
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
mov edi, esi
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
bts cx, dx
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
xor esi, -82
imul cx, bx
sub dl, 107
sub bx, 24
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
or ax, -13633
cmovbe dx, dx
movzx ax, dil
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
add dl, 45 # instrumentation
cmovbe rax, rdi
and rsi, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rbx]
xchg dx, dx
cmovz ecx, edx
imul si, ax, -75
cmp bl, sil
and dl, -104
mov dl, cl
or bx, 0b1000000000000000 # instrumentation
bsf di, bx
mov edx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rcx]
imul bl
dec dl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
xor ecx, ecx
and rdx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
