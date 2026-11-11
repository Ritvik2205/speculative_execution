.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 65
test bl, dil
cmp esi, 32
test rdi, -1876639003
xor dx, ax
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
mov cl, cl
cmp bl, 13
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 42
cmovnl dx, cx
sbb dil, al
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmp dx, 88
sub cl, cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
test edx, 573099753
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
adc eax, -79
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 24
add cl, 8 # instrumentation
adc sil, dl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi]
xor bl, 93
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
imul bl
inc al
and rax, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], cx
cmovnb ebx, edi
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
sub bl, bl
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
cmp rsi, 2
xor dl, dl
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
or bl, 7
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
cmovz esi, ecx
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
imul dl
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
add al, -32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
