.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, rbx
or edx, eax
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 7
cmp dl, 46
add ax, 28666
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], si
xor dl, 46
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
cmovnb rcx, rbx
sub al, sil
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
adc al, cl
or bx, cx
and di, 15
movzx rbx, di
cmovo ax, dx
cmovo rdi, rdi
xor eax, ecx
imul sil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and dl, sil
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb dx, cx
imul eax
mul ax
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 31
sub rcx, 67
bts edi, edi
sub sil, dil
add bl, 65 # instrumentation
cmovnp si, bx
cmovle rdx, rsi
bts rdi, rdi
cmovnb edx, ebx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
mov rdx, 49
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
add sil, al
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
cmp cx, 91
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rcx]
add cl, -10 # instrumentation
cmovnbe ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
