.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
cmovnbe rcx, rdi
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
cmovo rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
sub eax, -523763262
inc al
not rbx
xor bx, di
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
xor edx, eax
or bl, bl
sub al, 99
mov rcx, 4219775168754920203
cmovns bx, di
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
btc rsi, 140
sub al, dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
sbb bl, -94
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sbb dx, si
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
imul sil
mov al, dl
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
cmovs dx, di
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovb edi, ebx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
add bl, cl
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
mov rcx, 4219775168754920203
test cl, -89
add dl, 110 # instrumentation
movsx ax, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
