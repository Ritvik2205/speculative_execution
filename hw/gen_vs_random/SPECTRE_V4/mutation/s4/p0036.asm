.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and cl, cl
mov rax, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
bswap eax
adc rsi, 82
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -1
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
or dl, 1 # instrumentation
neg ecx
add ax, 6414
and ax, -14374
cmovnb edi, edx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 80
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
sub esi, -10
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 104
mov ebx, esi
and dl, dl
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
add bl, cl
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
add cl, -106 # instrumentation
cmovno rbx, rax
movsx bx, cl
and eax, -1145483375
xor dl, cl
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
adc rax, rcx
neg ax
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rax]
xor dl, dl
or dil, -16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
