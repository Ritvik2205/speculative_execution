.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -31
btc ecx, 233
cmp sil, bl
add dl, -59 # instrumentation
movsx edi, sil
or dil, -104
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rax
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
sub bl, bl
or di, 0b1000000000000000 # instrumentation
bsf di, di
mov rbx, rdi
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], -60
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
sub ax, 24426
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
bswap eax
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
inc cx
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
sub sil, 71
cmovnb bx, ax
xor ax, 13332
test cl, dl
imul esi, edi
adc ecx, 55
cmovnb di, ax
sbb bl, bl
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
test ebx, 91
cmp eax, ebx
sub rbx, 101
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
bt esi, eax
cmovnb di, di
not ebx
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rcx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
imul edx, edx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 35
cmovle di, ax
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
