.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
add cl, 53 # instrumentation
cmovnbe esi, edx
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
xor eax, 550678097
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test ax, -25022
adc cl, al
add eax, 544045319
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
or rbx, -108
sub bl, -89
sub dx, si
add bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
cmp al, 116
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
cmovno rcx, rdi
cmp dl, dl
inc edi
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
add si, 81
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
test ax, -6584
sub cl, -73
xor dx, -43
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
add dl, al
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 93
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
imul eax, ecx, -17
sbb sil, -11
btc edx, 165
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
mul bl
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
cmovle rdx, rdx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
bswap edx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
