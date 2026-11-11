.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb edi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
sub eax, 2030845821
add bl, cl
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
xor bx, di
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
mov rcx, 4219775168754920203
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
sbb dx, si
sub al, dl
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
btc rsi, 225
not rbx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
imul sil
cmovo rbx, rdx
xor edx, eax
add dl, 110 # instrumentation
movsx ax, dl
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
test cl, -89
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
inc al
sub al, 119
or bl, bl
cmovnbe rcx, rdi
mov al, dl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
cmovns bx, di
sbb bl, -94
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmovs dx, di
mov rcx, 4219775168754920203
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
