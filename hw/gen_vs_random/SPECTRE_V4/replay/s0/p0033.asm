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
test ax, 2960
cmp dl, dl
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
xor eax, 365940537
cmp al, -106
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
sbb sil, -124
add eax, -1398129660
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
xor al, al
xor dx, -43
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
add cl, 53 # instrumentation
cmovnbe esi, edx
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
inc edi
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
sub bl, -98
cmovle rdx, rdx
adc cl, al
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
