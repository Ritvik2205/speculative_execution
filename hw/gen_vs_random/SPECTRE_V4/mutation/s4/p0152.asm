.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, 308288205
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
cmovle rdx, rdx
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
bswap edx
sbb sil, 24
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 93
add eax, 544045319
xor al, al
sub cl, -119
add si, 81
xor dx, 7
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
mul bl
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
sub bl, 66
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
adc cl, al
cmovno rcx, rdi
cmp dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
test ax, 19171
imul eax, ecx, -17
cmp al, 115
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
or rbx, -107
add bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111111 # instrumentation
test ax, -25022
add dl, al
add cl, 53 # instrumentation
cmovnbe esi, edx
sub dx, si
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
btc edx, 164
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
inc edi
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
