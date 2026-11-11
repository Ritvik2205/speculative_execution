.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
sub eax, -523763262
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
add dl, 110 # instrumentation
movsx ax, dl
cmovnbe rcx, rdi
cmovb edi, ebx
cmovo rbx, rdx
sbb bl, -94
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
sub al, dl
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
not rbx
add bl, cl
sub al, 98
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
mov rcx, 4219775168754920203
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
cmovs dx, di
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
sbb dx, si
mov rcx, 4219775168754920203
xor edx, eax
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
xor bx, di
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
test cl, -89
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
imul sil
or bl, bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
cmovns bx, di
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
mov al, dl
btc rsi, 225
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
