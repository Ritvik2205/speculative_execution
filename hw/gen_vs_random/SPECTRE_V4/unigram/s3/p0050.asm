.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
inc edi
sub rdx, rbx
add al, 122 # instrumentation
cmovns esi, edx
mov si, 26
sub dl, 43
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
imul rbx
movsx ecx, dil
and rax, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rax]
cmovs di, bx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
sbb bl, -94
btc rbx, 60
test ax, bx
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
xor rdi, 84
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
test al, al
cmp al, -52
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
xor dil, al
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
xor al, dil
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
test bl, 24
sub dil, al
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
xor al, sil
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
cmovnbe si, bx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rax]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdx
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
sub ebx, 82
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
cmp si, 19
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
cmp sil, dl
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
