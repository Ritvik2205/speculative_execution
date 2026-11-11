.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ebx, -57
sbb dl, 53
sub eax, edx
sub rcx, -74
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
xor rcx, rdi
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx]
inc dx
xor cl, sil
bt rdx, rcx
adc sil, sil
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edi
sub sil, sil
mul edx
mov di, 32
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
cmp al, dil
cmp rdi, 28
xchg bl, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
cmovbe bx, bx
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
not ax
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
neg rsi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
add al, -32 # instrumentation
cmovp rax, rdi
add bl, -52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdx]
cmovnz esi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 63
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], cl
xor al, sil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
cmovl ebx, edi
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], esi
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 42
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], 69
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
or rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
