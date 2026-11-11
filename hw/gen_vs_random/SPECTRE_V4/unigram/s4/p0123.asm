.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -122 # instrumentation
cmovp ax, ax
imul rbx, rax
or di, 0b1000000000000000 # instrumentation
bsr dx, di
and ecx, edi
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], -50
mov ebx, eax
test ax, si
cmp esi, 123
adc al, 43
add dl, -57 # instrumentation
cmovno rdx, rax
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rax], ax
not cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 32
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rdi]
bswap ecx
xor ax, di
and rdi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdi]
and ecx, 71
and rsi, 0
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
inc rax
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], esi
adc dil, 38
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], ax
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
mov dil, sil
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx]
cmovp rax, rdx
and rsi, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
xchg si, si
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
mov bl, -69
mov sil, cl
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 28
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 48
and cl, sil
or edx, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
inc rdx
and rax, 0b1111111111111 # instrumentation
or bl, 39
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
movzx ebx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
