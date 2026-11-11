.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, 18
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
bswap rcx
cmp sil, dl
cmovo edx, edx
inc sil
add cl, bl
cmovnb dx, si
bts ax, si
mul cl
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
btc rax, rcx
and rdx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdx]
cmovnb di, di
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 1 # instrumentation
and dx, word ptr [r14 + rdi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rdi]
xor ax, 13329
add sil, -57 # instrumentation
cmovno rsi, rcx
add rdi, 111
and edx, edi
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
adc sil, -63
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], bx
cmp al, 109
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 2
neg rdx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
mov di, si
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
add bl, -38
btc rcx, rax
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and dl, -104
and dx, -107
imul sil
and rdx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdx]
test dl, 114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
