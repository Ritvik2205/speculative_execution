.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, -120490246
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp bx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
cmp cl, dl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
dec rbx
or cl, 1
cmovz si, si
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
or dl, dl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
add cl, -82 # instrumentation
sbb si, di
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
movzx si, al
add dl, -26 # instrumentation
btr edx, 30
inc rsi
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
imul cl
btc rdi, rsi
sub dl, al
cmovnb esi, edi
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
test cl, -89
movzx rax, di
cmovnl rsi, rcx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
adc bl, dl
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], bx
imul esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
