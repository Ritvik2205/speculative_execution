.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ebx
or di, 2
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
mul cl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
cmp rbx, rsi
sbb di, si
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
cmp cl, 107
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 33
sub edx, 73
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
mov al, sil
movsx rcx, ax
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
bts rcx, rdx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 52
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rax
or sil, -47
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
add ax, ax
or cl, 66
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
cmovnl dx, dx
btc rcx, rax
imul ax, bx, 70
and rsi, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rsi]
cmp eax, ecx
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
imul eax, edi
add bl, bl
and edx, eax
or rdi, rsi
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
adc edi, ecx
bts rsi, 236
and si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
