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
btc dx, 16
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
not si
sbb al, 123
cmovnbe rcx, rcx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
sbb al, -62
cmovs rax, rdx
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
inc esi
sbb cl, 19
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 35
and al, -36
sub al, al
xchg eax, ebx
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle esi, ebx
and rcx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rcx]
add sil, 110
sub dl, al
and bx, 95
movzx ecx, bl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
sub dil, -10
not bx
cmp bl, al
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
test eax, 1880179600
or sil, 2
xchg si, di
btr rsi, rdx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
lea edi, qword ptr [rbx + rax]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
