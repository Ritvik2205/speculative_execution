.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and al, dl
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
xor dl, cl
and sil, 65
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
test sil, dl
cmovbe si, dx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 55
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 30
bswap rbx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 86
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
sub dil, 86
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 89
and rdi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdi]
test dl, 25
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 6
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
cmovnbe rbx, rsi
xor al, 78
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovb rdx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 75
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
