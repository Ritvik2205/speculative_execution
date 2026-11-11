.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, 225
mov al, dl
inc al
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
xor edx, eax
sbb bl, 57
cmovnbe rcx, rdi
not rbx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmovo rbx, rdx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
mov rcx, 5862286138240743445
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
cmovb edi, ebx
cmovs dx, di
imul sil
sub al, 99
test cl, -89
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
add dl, 110 # instrumentation
movsx ax, dl
mov rcx, 4219775168754920203
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
sbb dl, bl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
cmovns bx, di
add bl, cl
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
sub al, dl
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
xor bx, di
or bl, bl
sbb dx, si
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
sub eax, 2030845821
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
