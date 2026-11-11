.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
add cl, 53 # instrumentation
cmovnbe esi, edx
add bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
sbb sil, 24
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
xor al, al
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
mul bl
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
add eax, 1936378991
sub bl, -89
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
sub dx, si
cmovle rdx, rdx
xor dx, -43
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
adc cl, al
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
btc edx, 165
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
or rbx, -107
inc edi
cmp dl, dl
test ax, 19171
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
xor eax, 1185843233
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
cmp al, -122
sub cl, -94
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 93
and rdx, 0b1111111111111 # instrumentation
test ax, -25022
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
imul eax, ecx, -17
add dl, al
bswap edx
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
add si, 81
cmovno rcx, rdi
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
