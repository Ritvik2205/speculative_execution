.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 93
add cl, 53 # instrumentation
cmovnbe esi, edx
cmp dl, dl
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
sub bl, 56
add dl, al
test ax, 2960
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
sbb sil, -124
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
sub dx, si
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
imul eax, ecx, -17
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
add eax, 544045319
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
xor al, al
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
sub cl, -51
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
and rdx, 0b1111111111111 # instrumentation
test ax, -25022
add si, 81
xor dx, -43
cmovno rcx, rdi
or rbx, -108
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
mul bl
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmovle rdx, rdx
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
bswap edx
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
inc edi
add bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
cmp al, -122
xor eax, -48271836
adc cl, al
btc edx, 164
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
