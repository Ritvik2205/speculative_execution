.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -18 # instrumentation
mov rsi, rdx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 21
and rdx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdx]
imul eax
adc al, 69
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
add ebx, 3
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
inc esi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 53
cmovle ebx, ecx
cmp bl, sil
cmovle rcx, rbx
cmovb eax, ebx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
sbb edi, 50
and rbx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
or di, si
imul bx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
sbb rax, 183833426
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
cmovo rax, rcx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sub rcx, 28
neg rdi
and rsi, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 56
imul ax, si
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
test al, 66
mov eax, 20
xchg sil, sil
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdx]
sub esi, edx
cmovns bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
