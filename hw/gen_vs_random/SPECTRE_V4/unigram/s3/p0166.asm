.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul cl
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 44
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
or ebx, ecx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 8
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
cmovnl di, si
cmovz esi, ecx
or di, dx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
cmovz edx, eax
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
add esi, -5
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 7
movzx bx, al
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
add al, -117 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdi
mul cl
imul rbx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
btc edx, 33
bswap eax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
adc bl, cl
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add dl, -10 # instrumentation
cmovnbe edx, edi
sub dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
and rax, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rax]
test cl, -89
not rdx
not di
mov ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 19
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
cmp sil, cl
test cl, cl
cmovs di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
