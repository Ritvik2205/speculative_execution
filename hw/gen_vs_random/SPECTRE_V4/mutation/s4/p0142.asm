.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul sil
cmovns bx, di
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
mov rcx, 4219775168754920203
cmovnbe rcx, rdi
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
add bl, cl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
sbb bl, -94
mov al, dl
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
sbb dx, si
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
sub al, 99
inc al
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
cmovo rbx, rdx
cmovs dx, di
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
mov rcx, 4219775168754920203
btc rsi, 140
sub al, dl
test cl, -89
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
not rbx
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
sub eax, 2030845821
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
cmovb edi, ebx
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
sbb dl, bl
add dl, 110 # instrumentation
movsx ax, dl
or bl, bl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
xor edx, eax
xor bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
