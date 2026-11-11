.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
bts esi, 241
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 106 # instrumentation
cmovnp rdi, rsi
dec rbx
btc dx, 119
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
not si
sbb al, -47
cmovnbe rcx, rcx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
sbb al, -101
cmovs rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
imul esi, eax, 92
xor al, 29
and rcx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 7
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 98
btc ebx, 94
bts eax, 209
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
xor al, 102
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
and rdi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
xor dil, 2
cmovp rdi, rcx
or bx, cx
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], bx
add dl, -94 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
or sil, 49
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
cmovnbe di, cx
sub rdx, 22
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 11
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
