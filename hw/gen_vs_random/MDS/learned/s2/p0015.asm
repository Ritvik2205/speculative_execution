.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and al, dl
and rsi, 70
or rax, -2043376621
btc rbx, rax
xor al, cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
btc bx, 179
and cl, 127
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
not al
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 630928397
cmovnle rcx, rax
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
cmovnbe dx, si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
or rsi, 92
and dl, dil
and rsi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 6
add ebx, 68
xor ax, 2053
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 115
sub bl, 33
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
jmp .bb_0.1
.bb_0.1:
btc rsi, 33
and rdi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdi]
sub ecx, 34
cmovnbe rbx, rsi
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rbx
xor esi, edi
bswap edi
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
and bl, dil
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 23
cmovl rax, rcx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
