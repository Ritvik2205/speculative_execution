.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
mov rcx, 5862286138240743445
sub eax, -523763262
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
sub al, dl
cmovs dx, di
xor bx, di
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
cmovo rbx, rdx
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
or bl, bl
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
xor edx, eax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
add bl, cl
imul sil
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
test cl, -89
sbb bl, 57
cmovnbe rcx, rdi
sbb dl, bl
not rbx
mov rcx, 4219775168754920203
sbb dx, si
sub al, 50
cmovns bx, di
inc al
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
mov al, dl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
cmovb edi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
btc rsi, 225
add dl, 110 # instrumentation
movsx ax, dl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
