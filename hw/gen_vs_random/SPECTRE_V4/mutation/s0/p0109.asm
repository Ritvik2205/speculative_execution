.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add eax, 84
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
add si, 81
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
mul bl
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
sub cl, -51
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmovno rcx, rdi
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 93
xor dx, 7
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
sub dx, si
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
cmp al, 116
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
sbb sil, -11
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
btc edx, 165
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
adc cl, al
inc edi
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
cmovle rdx, rdx
xor eax, 167244411
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
cmp dl, dl
xor al, al
add cl, 53 # instrumentation
cmovnbe esi, edx
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
or rbx, -108
add dl, al
test ax, -6841
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test ax, -25022
sub bl, -89
bswap edx
add bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
imul eax, ecx, -17
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
