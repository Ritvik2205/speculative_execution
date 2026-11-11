.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
cmovns bx, di
test cl, -89
inc al
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
imul sil
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
xor bx, di
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
mov rcx, 5862286138240743445
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
cmovnbe rcx, rdi
cmovs dx, di
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
sbb dl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
mov al, dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
add dl, 110 # instrumentation
movsx ax, dl
cmovb edi, ebx
sub al, dl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
btc rsi, 225
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
or bl, bl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
xor edx, eax
sbb dx, si
cmovo rbx, rdx
sub al, 99
sub eax, 2030845821
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
sbb bl, 57
add bl, cl
mov rcx, 4219775168754920203
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
not rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
