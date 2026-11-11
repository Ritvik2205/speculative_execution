.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
inc al
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
not rbx
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
xor edx, eax
mov rcx, 4219775168754920203
mov rcx, 4219775168754920203
add bl, cl
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
cmovnbe rcx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
sub al, 50
sbb dx, si
cmovo rbx, rdx
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
xor bx, di
cmovb edi, ebx
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
cmovs dx, di
or bl, bl
add dl, 110 # instrumentation
movsx ax, dl
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
sbb bl, 57
mov al, dl
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
cmovns bx, di
btc rsi, 140
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
imul sil
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
test cl, -89
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
sub eax, 2030845821
sub al, dl
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
