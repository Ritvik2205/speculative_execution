.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov edx, eax
add si, 4
adc si, 97
add dl, -71 # instrumentation
adc dl, bl
movzx ax, cl
cmovnl si, cx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
mov rsi, 13
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 68
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdi]
cmovnb eax, edx
imul si, dx
cmp dl, 48
cmovnz esi, edx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
movsx ecx, ax
cmovnbe rax, rdx
or dil, 60
cmovnb dx, dx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
and bl, sil
bt ecx, edx
imul rbx
xor cl, dil
sub rax, -701741274
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 79
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
test al, sil
add cl, -21 # instrumentation
adc rbx, 100
cmovnp eax, edx
cmp bl, dil
sbb si, di
add cl, 106 # instrumentation
cmovnp rax, rdi
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
or al, 96
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rcx]
and bl, cl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ecx
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], ecx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
bt ecx, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
