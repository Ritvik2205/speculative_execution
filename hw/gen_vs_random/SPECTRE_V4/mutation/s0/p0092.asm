.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rsi, 82
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 85
neg ax
add ax, 17333
and dl, dl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
cmovnb edi, edx
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
sub esi, -69
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and eax, -1237519395
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
mov ebx, esi
xor dl, dl
xor dl, cl
or dl, 1 # instrumentation
neg ecx
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
and cl, cl
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
bswap eax
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
or dil, -16
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 80
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
mov rax, rdx
and ax, 25163
movsx bx, cl
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
adc rax, rcx
add cl, -106 # instrumentation
cmovno rbx, rax
add bl, cl
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -1
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
