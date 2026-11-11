.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
xchg cx, di
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
adc ebx, -55
cmovbe cx, di
cmovl rdi, rbx
xor al, cl
cmovbe eax, ebx
xor cl, -101
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], si
cmp bl, -16
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 48
add cl, -23 # instrumentation
cmovno edx, eax
sub cx, ax
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], -59
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 4
cmovb edi, ecx
btc rbx, rdi
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdi]
xor edx, 18
and rdi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdi]
add al, 23 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 55
btr rdx, rdx
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
add al, -94 # instrumentation
cmovnle rdi, rax
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
cmovno rdi, rcx
add bl, 71 # instrumentation
cmovnle rax, rbx
cmp sil, cl
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ecx
cmovnp si, ax
add bl, dil
movsx bx, cl
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
or rax, rdi
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 6
test edi, -2098143765
bts edx, 116
not rax
test esi, eax
and rax, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
