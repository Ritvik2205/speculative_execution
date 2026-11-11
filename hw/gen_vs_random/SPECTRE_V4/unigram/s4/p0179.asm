.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 83
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
movzx edx, dl
cmovp edx, ebx
btc rax, rbx
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sbb esi, 57
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
add sil, cl
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
add sil, sil
add ebx, edx
test sil, 64
sub bl, 17
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
xor cl, -85
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
mov rdi, rdx
cmp dil, sil
sbb eax, -1688332460
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
cmovz edi, eax
neg di
cmovnbe ebx, esi
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
movzx rsi, di
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 53
mov rdi, rcx
not dx
sub dil, -10
cmovo ax, cx
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
sub bl, bl
cmovo esi, eax
or cl, al
imul rsi
add sil, 110
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
cmovz si, si
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
bt ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
