.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, ebx
sub ecx, -107
sub bl, dil
sbb cl, al
cmp cl, -80
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 3
sub edx, ecx
and al, dil
and cx, cx
cmp cl, -105
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
cmp dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
bswap edx
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
or di, 122
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
bts dx, si
sbb cl, al
cmovl eax, edx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
cmovnb ebx, eax
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
cmovnb si, ax
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
test cx, 7280
mov sil, dil
bswap rax
test bx, 24072
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
cmovnp esi, ebx
xor cx, -80
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dil
btc rdx, rdi
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
