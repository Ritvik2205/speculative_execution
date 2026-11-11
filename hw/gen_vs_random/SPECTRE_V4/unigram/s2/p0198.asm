.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, -124
cmovp esi, edi
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
add al, 19
not rax
or bl, -80
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
movzx rbx, ax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
xor sil, sil
add sil, 32 # instrumentation
adc rsi, 87
imul ax, cx
adc bl, 97
mov rax, rbx
add al, -7 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
test cl, dil
mov si, ax
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
test bx, di
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
xor al, 118
cmp al, -106
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
cmovle rcx, rdx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
adc dl, al
btc rdi, rbx
sub ebx, 81
or rdx, 1
cmovo eax, esi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -118
test esi, -2111618709
mov dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rsi
cmovnp edi, esi
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
cmovs rcx, rcx
bswap rdi
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
or ax, 7381
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
