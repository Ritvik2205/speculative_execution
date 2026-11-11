.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb edi, ebx
sbb bl, 57
xor edx, eax
sbb dl, bl
inc al
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
sub al, 99
sub al, dl
mov rcx, 5862286138240743445
sub eax, 2
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
test cl, -89
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
cmovs dx, di
btc rsi, 140
sbb dx, si
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
xor bx, di
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
cmovns bx, di
add dl, 110 # instrumentation
movsx ax, dl
imul sil
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
or bl, bl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
cmovo rbx, rdx
add bl, cl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
not rbx
cmovnbe rcx, rdi
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
mov al, dl
mov rcx, 5862286138240743445
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
