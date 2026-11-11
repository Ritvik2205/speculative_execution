.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 44
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
mul ax
xor cl, al
cmovb rax, rsi
setnbe dil
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -41 # instrumentation
xchg dl, dil
setnz dil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rax]
test eax, -558243208
and bl, -63
cmp al, bl
adc al, 69
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
add rdi, 105
imul di, si
and al, -36
cmovnp si, ax
imul si, di, 96
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdx
cmovnbe rbx, rsi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
cmp ax, -15409
cmp al, sil
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add al, 123 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
test bl, 0
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
cmovnbe si, bx
lea esi, qword ptr [rdi + rax]
test ax, dx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 88
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
sub sil, -36
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
xor dl, sil
add eax, -1796699558
bt ebx, 228
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
