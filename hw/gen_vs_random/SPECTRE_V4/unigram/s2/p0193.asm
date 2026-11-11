.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
sbb edi, 61
xor ebx, 97
add bl, -109 # instrumentation
sbb esi, 25
cmovb ebx, esi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 28
add cl, -42 # instrumentation
adc bl, dil
add ebx, edi
sub bl, 17
movsx eax, cx
cmovnb ebx, ecx
sbb bl, -94
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
inc esi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
sub esi, 73
bt eax, 84
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 57
or edi, eax
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 21
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
movzx si, cl
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and edx, 85
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edi
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 7
sub bl, 17
add si, 4
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
cmp dx, 29
add bl, -10 # instrumentation
cmovnbe ebx, esi
add di, -74
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 75
imul sil
imul ecx, ebx, 90
cmp sil, sil
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
