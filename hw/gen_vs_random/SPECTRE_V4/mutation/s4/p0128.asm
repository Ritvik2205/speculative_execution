.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, cl
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -1
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and cl, cl
and ax, 27239
neg ax
mov ebx, esi
add cl, -106 # instrumentation
cmovno rbx, rax
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
xor dl, dl
and eax, -2040347881
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 36
or dl, 1 # instrumentation
neg ecx
and rax, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rax]
adc rsi, 82
movsx bx, cl
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
bswap eax
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
adc rax, rcx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
or dil, -16
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
mov rax, rdx
sub esi, -10
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
and dl, dl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
cmovnb edi, edx
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
xor dl, cl
add ax, 17333
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
