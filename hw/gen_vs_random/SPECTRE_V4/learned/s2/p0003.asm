.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 64
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sbb dl, sil
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 87
sbb dl, dil
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 73
xor al, 29
bt ax, cx
bt edi, 2
cmovnp rbx, rdx
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
adc al, 36
add edi, eax
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 28
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
inc esi
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
cmovno dx, cx
and rbx, 69
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
cwd
cmp dx, si
bts rbx, 46
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 23
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
xor al, -2
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
or bl, bl
cmp al, -52
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], 77
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovs di, di
sub rdx, 22
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
sub ebx, edi
inc bx
inc edx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
