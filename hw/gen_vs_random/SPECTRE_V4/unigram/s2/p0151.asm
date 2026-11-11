.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle ebx, edx
xchg dx, bx
cmovnbe eax, esi
add dl, -71 # instrumentation
adc dl, cl
movzx rcx, di
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], bx
or ax, dx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
cmp sil, 88
imul rsi
add cl, 74
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 49
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 23
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
bts esi, 241
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
adc ecx, -12
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
or esi, edx
movzx ebx, al
cmovnle bx, ax
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
add cl, -117 # instrumentation
cmovs rdi, rcx
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
add dl, 31 # instrumentation
cmovnl cx, cx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 56
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
inc cl
mov dx, 52
movzx di, cl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
sub edx, 77
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 76
xor edx, edi
xchg rax, rdx
mul ax
cmovs si, cx
mov rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
