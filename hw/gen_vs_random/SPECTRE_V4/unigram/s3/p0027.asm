.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
cmovns eax, ebx
add al, 122 # instrumentation
cmovns edi, edx
test bx, dx
and rbx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rbx]
add esi, eax
and rdx, 7
bswap rax
not di
add al, -10 # instrumentation
cmovnbe eax, ebx
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
sbb edi, 19
inc edi
adc dl, 93
cmovnbe rdx, rsi
not cx
cmp sil, bl
sub dl, 43
bts ebx, 22
cmovp rdx, rax
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
test eax, -544019457
add al, 122 # instrumentation
cmovns eax, ecx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
add edx, eax
cmovnz bx, ax
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
add sil, sil
test dil, dl
movzx edi, al
sbb si, 65
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx], 55
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], edx
cmovnbe cx, ax
cmovnb ebx, edx
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 20
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 85
adc cx, cx
or ebx, esi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add rsi, rbx
and rsi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and al, bl
cmovnb ecx, esi
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
