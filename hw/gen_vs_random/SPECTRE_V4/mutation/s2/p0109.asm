.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
btc rsi, 225
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
cmovns bx, di
imul sil
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
cmovs dx, di
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
add dl, 110 # instrumentation
movsx ax, dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
mov al, dl
add bl, cl
cmovnbe rcx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
sub al, dl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
sub al, 50
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
or bl, bl
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
xor edx, eax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
sbb dx, si
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
cmovb edi, ebx
sbb dl, bl
inc al
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
cmovo rbx, rdx
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
mov rcx, 4219775168754920203
mov rcx, 4219775168754920203
xor bx, di
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
sbb bl, -94
not rbx
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
sub eax, 2030845821
test cl, -89
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
