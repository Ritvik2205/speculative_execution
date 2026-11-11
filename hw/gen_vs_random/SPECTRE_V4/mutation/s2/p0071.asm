.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rax, rcx
neg ax
xor dl, dl
cmovnb edi, edx
and rax, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
add cl, -106 # instrumentation
cmovno rbx, rax
movsx bx, cl
xor dl, cl
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
add bl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
mov ebx, esi
bswap eax
and ax, 25163
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
adc rsi, 82
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and eax, -1572488789
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
or dil, 5
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 80
mov rax, rdx
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -1
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
sub esi, -10
or dl, 1 # instrumentation
neg ecx
and dl, dl
and cl, cl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
add ax, -9762
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
