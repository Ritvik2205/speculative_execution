.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, 19
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
btc cx, dx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
movsx edi, al
sbb ecx, 66
neg rdi
add dl, -99 # instrumentation
not edi
imul bl
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
cmovnle ecx, eax
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and rbx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 16
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
bswap rdx
cmp dl, 54
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
add bl, -21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
imul bx
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], ax
cmovns bx, dx
and rdi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdi]
cmovs rax, rbx
sub dl, al
bts ebx, 22
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rsi
test dl, cl
sub sil, al
bt edi, ebx
adc dl, sil
xor ebx, 6
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
imul bl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 7
add rsi, rdx
xor bl, 93
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
dec dil
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
mov cx, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
