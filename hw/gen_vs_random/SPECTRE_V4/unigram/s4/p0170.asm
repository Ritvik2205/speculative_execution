.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 50
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
xchg rcx, rbx
sub rdx, 23
or bl, -99
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
sub al, -84
xchg rax, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
imul rbx, rbx
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 24
cmovl eax, ebx
add esi, 31
cmovnl ax, ax
btc rdi, 35
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
mul cx
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
adc cx, 78
cmp rax, rbx
imul sil
imul edx, eax, 87
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
sbb esi, edx
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
test dl, -125
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
test ecx, -1293796332
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rax
cmovnbe rsi, rax
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
cmovnz esi, edx
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
