.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
sub esi, -69
and dl, dl
add cl, -106 # instrumentation
cmovno rbx, rax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
and ax, -4731
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 36
adc rax, rcx
bswap eax
and rax, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rax]
adc rsi, 82
or dl, 1 # instrumentation
neg ecx
or dil, -16
movsx bx, cl
cmovnb edi, edx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
mov rax, rdx
mov ebx, esi
add bl, cl
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and cl, cl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 80
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
xor dl, cl
xor dl, dl
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -1
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
add ax, 10655
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 104
neg ax
and eax, -2040347881
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
