.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rcx, 97
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 46
neg dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
add al, 72 # instrumentation
cmovle ax, cx
and rcx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add al, -10 # instrumentation
mov ax, 61
not cx
movzx eax, bl
mov rsi, 31
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
add dil, dil
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 6
inc dl
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 32
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
btc rsi, rdi
sub esi, ebx
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], bx
test rbx, 75
add dil, -75 # instrumentation
adc dil, 37
sub sil, -36
cmp rsi, 8
neg rbx
btc ax, cx
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 87
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 32
sbb bl, -94
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
xor ebx, edx
sbb bl, -94
cmovnp rdi, rdi
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
cmovnz dx, si
adc sil, dil
cmp bl, 13
cmp si, 99
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], esi
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 83
and rdx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rdx]
sub al, 119
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
