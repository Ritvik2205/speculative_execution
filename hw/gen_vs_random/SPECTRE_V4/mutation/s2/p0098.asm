.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 93
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
cmovle rdx, rdx
add eax, 544045319
add dl, al
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
imul eax, ecx, -17
inc edi
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
sub bl, 56
xor eax, 167244411
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
cmovno rcx, rdi
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
cmp dl, dl
sbb sil, -11
test ax, -23852
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
sub dx, si
or rbx, -108
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
cmp al, 114
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
xor al, al
add si, 81
adc cl, al
and rdx, 0b1111111111111 # instrumentation
test ax, -25022
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
mul bl
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
btc edx, 108
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
xor dx, 7
bswap edx
sub cl, -51
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
add cl, 53 # instrumentation
cmovnbe esi, edx
add bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
