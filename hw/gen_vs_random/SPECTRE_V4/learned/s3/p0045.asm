.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], dx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
cmovle ebx, ecx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 55
xchg eax, edx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
and al, dl
test dl, cl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
cmovs rax, rdx
xor edi, 88
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
xor bx, si
not rbx
and al, -36
and dl, sil
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], esi
xor al, cl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
btc ebx, 94
movzx esi, bl
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
test bl, 24
movzx rdx, si
and rax, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rax]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
sbb esi, 72
bswap edi
cmovs di, di
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and sil, -49
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
