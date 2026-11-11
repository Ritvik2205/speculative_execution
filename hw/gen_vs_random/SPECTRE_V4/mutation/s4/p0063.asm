.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
sub dx, si
add cl, 53 # instrumentation
cmovnbe esi, edx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 93
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
sub cl, 78
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
mul bl
sbb sil, -124
add si, 81
bswap edx
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
cmp dl, dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
sub bl, 66
cmp al, 115
adc cl, al
cmovno rcx, rdi
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
imul eax, ecx, -17
xor eax, -1772786275
or rbx, 69
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rdx, 0b1111111111111 # instrumentation
test ax, -25022
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
inc edi
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
add bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
add eax, -1398129660
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
btc edx, 165
xor al, al
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
xor dx, 7
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
test ax, -6584
cmovle rdx, rdx
add dl, al
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
