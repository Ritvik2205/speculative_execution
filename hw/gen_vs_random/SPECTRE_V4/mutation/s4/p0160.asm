.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, -94
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
sub al, dl
sbb dx, si
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
cmovb edi, ebx
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
sbb dl, bl
add dl, 110 # instrumentation
movsx ax, dl
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
imul sil
mov rcx, 5862286138240743445
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
sub al, 99
inc al
sub eax, 2
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
mov al, dl
cmovns bx, di
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmovnbe rcx, rdi
btc rsi, 225
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
test cl, -89
add bl, cl
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
cmovo rbx, rdx
cmovs dx, di
xor bx, di
not rbx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
or bl, bl
xor edx, eax
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
mov rcx, 5862286138240743445
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
