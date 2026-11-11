.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, dl
adc sil, cl
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
adc dl, sil
or di, dx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
add sil, 26
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 26
cmovz esi, edi
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dil
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
cmovp si, si
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 10
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
add cx, cx
xor ax, 28088
and rcx, -102
mov rsi, rbx
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
add al, 118
jmp .bb_0.1
.bb_0.1:
bts rax, 157
adc bl, 89
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
add dil, 16
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
test eax, -544019457
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
cmovp ax, di
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
cmp al, -23
mov edi, -1544998000
imul rsi
cmp rax, 2115020203
cmp bl, bl
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
movzx edx, sil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
bswap rcx
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
