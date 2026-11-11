.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov ebx, esi
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
or dl, 1 # instrumentation
neg ecx
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
and cl, cl
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
mov rax, rdx
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
and dl, dl
sub esi, -10
and eax, -1555813586
xor dl, dl
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
or dil, -104
adc rax, rcx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 85
adc rsi, 82
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -1
add bl, cl
neg ax
bswap eax
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 104
add ax, -7857
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 80
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
movsx bx, cl
and rax, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
xor dl, cl
cmovnb edi, edx
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and ax, -197
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
add cl, -106 # instrumentation
cmovno rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
