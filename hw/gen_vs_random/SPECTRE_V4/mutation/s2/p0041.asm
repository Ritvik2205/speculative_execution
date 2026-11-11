.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
cmovnbe rcx, rdi
sbb bl, -94
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
test cl, -89
add dl, 110 # instrumentation
movsx ax, dl
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
sbb dl, bl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
inc al
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovns bx, di
mov rcx, 4219775168754920203
sbb dx, si
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
not rbx
btc rsi, 140
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
sub eax, 2
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
cmovb edi, ebx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
cmovs dx, di
or bl, bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
xor edx, eax
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
add bl, cl
mov al, dl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
imul sil
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
xor bx, di
cmovo rbx, rdx
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
mov rcx, 5862286138240743445
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sub al, 98
sub al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
