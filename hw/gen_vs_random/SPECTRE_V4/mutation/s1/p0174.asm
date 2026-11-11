.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap eax
xor dl, cl
add bl, cl
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
or dl, 1 # instrumentation
neg ecx
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 104
and dl, dl
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 80
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
add cl, -106 # instrumentation
cmovno rbx, rax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rax]
or dil, 89
sub esi, -10
adc rax, rcx
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
and ax, 25163
mov ebx, esi
neg ax
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
xor dl, dl
adc rsi, 82
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and eax, -1948401947
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
mov rax, rdx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
add ax, 10655
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -1
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
cmovnb edi, edx
movsx bx, cl
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
