.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, 122 # instrumentation
cmovz rdx, rbx
or di, 0b1000000000000000 # instrumentation
bsf di, di
add cl, 122 # instrumentation
cmovz rsi, rdi
sub esi, 18
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
add sil, 110 # instrumentation
movsx cx, sil
cmovs di, di
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
dec al
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 98
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
xor dl, sil
btc rbx, 12
inc edx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 33
movsx edi, cx
cmovnbe cx, dx
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
not cx
and rsi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rsi]
or dl, sil
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 56
xor edx, 97
bt esi, eax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 43
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
cmovns eax, ecx
and rdx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdx]
sbb cx, si
bswap edx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 36
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
xor dl, dl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rax, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rax]
add bl, -21 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
