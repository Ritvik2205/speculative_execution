.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, -99
cmp al, bl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], esi
cmp ax, -15409
cmovnbe rbx, rcx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
add dl, -114 # instrumentation
cmovl si, ax
bswap rdx
add dl, -10 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
add eax, -1796699558
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 8
xor sil, 56
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 61
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
xchg eax, edi
cmovnp edi, ecx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
add cl, -102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
cmovnz ecx, edi
or dil, dl
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
cmp bl, 13
sub al, bl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
neg dil
test ax, 23760
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
cmovnbe rdx, rbx
adc bl, sil
add bx, 110
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rax
btc ax, 96
add ax, 28666
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
cmovnz cx, di
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
btc rdx, 49
imul eax
add dil, 82
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
sub eax, ecx
cmp rcx, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
