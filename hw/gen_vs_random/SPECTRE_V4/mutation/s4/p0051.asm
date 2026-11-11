.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
sub esi, -69
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 80
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
bswap eax
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
add ax, -9762
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
movsx bx, cl
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
xor dl, cl
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
add cl, -106 # instrumentation
cmovno rbx, rax
and rax, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 104
and ax, -23308
mov rax, rdx
or dl, 1 # instrumentation
neg ecx
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -1
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
adc rsi, 82
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
mov ebx, esi
adc rax, rcx
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
add bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
or dil, 5
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
and dl, dl
and eax, -2001076187
and cl, cl
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
neg ax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
cmovnb edi, edx
xor dl, dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
