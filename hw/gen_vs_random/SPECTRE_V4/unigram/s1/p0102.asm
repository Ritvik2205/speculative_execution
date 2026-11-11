.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, 2115020203
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], cx
not dl
add bl, 38 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rax]
cmovnbe rsi, rcx
xor al, 69
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 27
xor al, 59
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 52
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
xchg rsi, rdx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
cmovnle rdi, rdi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rcx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 55
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
sbb al, al
not di
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
sub al, al
adc dil, dil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 25
cmovp ebx, eax
cmp rbx, 13
cmovnbe bx, si
or dil, 23
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rsi
cmovs rdx, rax
and rdx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdx]
bswap rdx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and al, sil
and sil, al
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 89
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
imul dl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
