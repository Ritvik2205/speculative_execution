.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
add bl, -101 # instrumentation
cmovz edx, edx
xchg rdi, rcx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
xchg eax, eax
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
sub rdi, rbx
and rdi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdi]
mov edx, -950755477
test di, ax
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdx
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 2
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], -20642
and dl, dil
add dl, 109
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edi
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
bswap esi
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
adc bl, 0
btr rbx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
btc edi, 125
or rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
add ax, -18924
add ax, ax
and bx, cx
cmp dil, sil
imul dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -74
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
cmovb si, di
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
bswap rax
cmp cl, 100
dec cx
or cl, -55
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 54
sub rdi, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
