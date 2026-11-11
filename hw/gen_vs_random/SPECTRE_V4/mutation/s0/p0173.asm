.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
sub al, dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
not rbx
or bl, bl
xor bx, di
cmovs dx, di
sub eax, 2
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
imul sil
add bl, cl
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
cmovns bx, di
inc al
sbb bl, 57
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
btc rsi, 225
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
sub al, 98
cmovo rbx, rdx
sbb dx, si
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
add dl, 110 # instrumentation
movsx ax, dl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
mov al, dl
mov rcx, 4219775168754920203
sbb dl, bl
test cl, -89
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
mov rcx, 4219775168754920203
cmovb edi, ebx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
cmovnbe rcx, rdi
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
xor edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
