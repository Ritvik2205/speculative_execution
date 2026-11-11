.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -94
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 93
cmovno rcx, rdi
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
mul bl
sub dx, si
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
add si, 81
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
add dl, al
and rdx, 0b1111111111111 # instrumentation
test ax, -25022
imul eax, ecx, -17
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
btc edx, 165
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
or rbx, 69
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
bswap edx
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
test ax, -6584
sbb rbx, rcx
sub ax, -1393
adc rax, 519150753
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ecx
xor ax, di
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -2
mul rbx
sbb rax, 475459025
and dl, bl
mov rax, -8100960678429780222
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
cmovle dx, bx
cmp cl, 49
xor di, dx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
cmovl bx, si
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
sub cl, -32
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
and rsi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
