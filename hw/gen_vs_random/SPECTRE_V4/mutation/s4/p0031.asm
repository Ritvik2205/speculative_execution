.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, ax
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
cmovs esi, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and ax, 4
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
add bl, 76 # instrumentation
sbb edx, ebx
or eax, -1213318393
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 62
and ax, -23308
or rsi, -5
sbb dx, 2
cmovz rax, rbx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
imul dx, cx
add bl, -74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
or rax, -823069511
cmovp rdi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
movzx edx, al
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
movzx edx, cl
adc bl, dl
not sil
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
add bl, -101 # instrumentation
cmovz ecx, ecx
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
not cl
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
btr bx, dx
sub cl, al
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], -48
and ax, 16313
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
test dl, dl
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], edi
and al, al
sbb rsi, 117
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
dec rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
