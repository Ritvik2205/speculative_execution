.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdx]
mul ax
cmovnbe dx, ax
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 29
sub eax, 2030845821
setnle sil
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdi]
add rdx, rbx
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
cmovno rbx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
or rcx, rdi
cmp al, -52
cmovnle cx, cx
bt rcx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 44
and dl, al
bt rbx, rsi
mov rsi, rbx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add bl, -10 # instrumentation
cmovnbe ebx, edi
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
xor bl, al
imul rdi, rsi, 57
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rax
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
xchg edx, esi
add ebx, eax
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and sil, dil
adc cl, sil
or dl, al
cmp rax, -120490246
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
