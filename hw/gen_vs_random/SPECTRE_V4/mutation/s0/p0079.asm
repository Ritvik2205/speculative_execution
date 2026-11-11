.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, cl
cmovs dx, di
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
sbb dx, si
cmovo rbx, rdx
not rbx
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
sbb bl, 57
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
mov al, dl
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
sub al, dl
xor edx, eax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
test cl, -89
imul sil
cmovb edi, ebx
sub al, 119
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
inc al
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
add dl, 110 # instrumentation
movsx ax, dl
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
sub eax, -523763262
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
cmovnbe rcx, rdi
cmovns bx, di
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
xor bx, di
sbb dl, bl
mov rcx, 4219775168754920203
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
mov rcx, 5862286138240743445
or bl, bl
btc rsi, 225
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
