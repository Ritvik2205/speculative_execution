.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -40 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
cmovz ebx, edx
mov rbx, rdi
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -51
cmovnbe dx, di
xor al, -60
mov bl, cl
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -115
test edx, 1479885278
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 6
bswap edx
cmp eax, -813838876
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
add dl, cl
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
sub bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
cmp dl, dl
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
xor eax, 1760581269
cmp al, 115
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
sbb sil, -11
add eax, -1398129660
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
xor al, al
xor dx, 7
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
sub bl, -89
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
