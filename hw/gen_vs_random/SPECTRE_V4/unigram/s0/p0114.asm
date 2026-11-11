.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 95
dec edx
and rdx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
adc bx, 52
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
adc al, -59
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
inc esi
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rsi]
sub ebx, 23
bts rsi, 236
mov dl, dl
cmp si, ax
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
add dl, -94 # instrumentation
cmovnle rcx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
sbb cl, -69
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
cmp eax, 1521417271
btc rax, rcx
btr rax, rdx
xor rcx, 112
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 83
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
adc rcx, rdx
and ecx, 71
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
xor bl, -126
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], eax
adc rdi, 30
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], esi
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], -34
sub sil, 71
cmovbe ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
