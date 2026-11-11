.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], bx
mov edi, edx
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 48
and rdi, -2
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], di
cmovnp ax, cx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
cmp bl, 13
cmp cl, bl
cmovns cx, bx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
bswap rax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
and sil, dl
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
cmp sil, sil
xchg rcx, rbx
cmovnl rbx, rdx
add ecx, 87
cmovz esi, esi
sub cl, 116
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
add cx, 67
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 9
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
or dl, 56
cmovo ecx, ebx
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
add edx, 76
sbb cl, 20
or dil, 59
xchg di, bx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
add bx, 110
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
add ax, -15653
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
cmp dil, -124
sbb cl, 20
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], 6
and rdx, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
