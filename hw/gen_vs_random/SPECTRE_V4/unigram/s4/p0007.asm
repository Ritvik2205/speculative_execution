.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 106 # instrumentation
cmovnp rsi, rbx
adc al, 69
imul si, dx
add al, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rsi]
inc al
bts edx, edx
add bl, -72
btc di, si
movzx ebx, dl
neg rsi
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 17
cmovns rcx, rax
movzx rdx, di
xor dil, sil
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 83
and rdx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
bt ebx, 228
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
cmovnp edi, esi
mul ax
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], dx
cmovz edi, ecx
xor bl, dil
sbb dil, 82
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
cmovb si, si
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rcx]
mov rdx, 6
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
cmp bl, dl
and rbx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rbx]
movzx bx, dil
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], eax
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 34
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
imul esi, ecx, 72
add bl, cl
cmp ebx, 60
cmovz eax, eax
inc dx
sub cl, al
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
sbb cl, -104
adc edi, 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
