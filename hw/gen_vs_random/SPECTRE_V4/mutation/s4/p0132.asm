.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
sbb dl, bl
cmovb edi, ebx
cmovo rbx, rdx
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
mov al, dl
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
mov rcx, 5862286138240743445
or bl, bl
sbb dx, si
test cl, -89
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
inc al
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
sbb bl, 57
sub eax, 2030845821
not rbx
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
add dl, 110 # instrumentation
movsx ax, dl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
mov rcx, 5862286138240743445
cmovs dx, di
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
btc rsi, 140
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
add bl, cl
cmovnbe rcx, rdi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
xor bx, di
sub al, 119
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
xor edx, eax
sub al, dl
imul sil
cmovns bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
