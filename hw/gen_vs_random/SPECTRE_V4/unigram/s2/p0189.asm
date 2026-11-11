.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul edi, ebx, 95
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], bx
add al, bl
inc di
adc eax, -1513455903
adc ax, ax
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 69
xor dl, 4
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rdi
sbb sil, 108
imul cl
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
btc ax, 86
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
add bl, 65 # instrumentation
cmovnp si, bx
imul rsi
mov bl, bl
mov sil, sil
sbb di, -76
test rdi, -1876639003
or dl, al
xor dil, cl
cmp edi, -104
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
cmovp rdx, rcx
imul di, dx
cmp ax, di
cmovle eax, edx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
mov ebx, 19
cmovnbe rax, rbx
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 25
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
xchg di, dx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
test bl, 0
btc dx, cx
cmovp rcx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
