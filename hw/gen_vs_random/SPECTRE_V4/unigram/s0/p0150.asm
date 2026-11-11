.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ecx, 65
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add sil, 3
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
xchg bl, bl
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 7
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 13
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 39
movsx bx, dl
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
xchg bx, ax
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
or bx, si
and dx, bx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -122
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
cmovnl si, ax
sub eax, -672265139
add cl, 53 # instrumentation
cmovnbe ecx, ebx
add cl, -118 # instrumentation
sbb rax, 69
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 74
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
imul rax, rbx, 29
btc rax, rsi
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
sub edi, eax
btc rax, 124
cmovs si, dx
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
cmp rbx, -91
xor cl, sil
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], cl
imul ax
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
cmp eax, 1521417271
test dl, 24
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
xor edi, 127
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
