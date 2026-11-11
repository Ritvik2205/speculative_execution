.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
mov rcx, 5862286138240743445
cmovs dx, di
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
or bl, bl
add bl, cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
sbb bl, -94
btc rsi, 140
inc al
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
not rbx
xor edx, eax
cmovo rbx, rdx
cmovb edi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
add dl, 110 # instrumentation
movsx ax, dl
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
sbb dl, bl
cmovns bx, di
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
mov rcx, 4219775168754920203
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
cmovnbe rcx, rdi
mov al, dl
sbb dx, si
sub al, 119
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
sub al, dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
imul sil
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
xor bx, di
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
test cl, -89
sub eax, 2030845821
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
