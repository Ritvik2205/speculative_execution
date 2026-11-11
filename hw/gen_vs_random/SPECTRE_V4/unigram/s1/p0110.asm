.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle eax, ecx
xor si, 23
sbb rax, 183833426
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
btc rcx, rax
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
cmovo rdx, rbx
cmovnp cx, bx
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
cmp di, 8
sbb esi, 93
add esi, edi
xor edi, ebx
or sil, 36
test edi, -1249897727
cmovnp rbx, rdx
and rax, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rax]
sub si, 11
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
xor bl, 93
and rsi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rsi]
cmovnbe ebx, edi
adc dl, dil
cmovnb di, di
cmovnl rsi, rax
sbb rbx, 83
imul rdi
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
or di, 0b1000000000000000 # instrumentation
bsf di, di
and sil, al
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 27
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and dl, bl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
adc rdi, rdx
dec rdx
cmovz esi, ecx
or ebx, 38
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
add bl, 97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
cmovnbe si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
