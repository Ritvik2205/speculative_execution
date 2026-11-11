.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 110 # instrumentation
movsx ax, dl
mov rcx, 5862286138240743445
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
or bl, bl
cmovo rbx, rdx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
cmovnbe rcx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
mov al, dl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
sbb bl, -94
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
sub al, dl
cmovs dx, di
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
btc rsi, 140
inc al
cmovb edi, ebx
mov rcx, 5862286138240743445
imul sil
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], -41
xor edx, eax
xor bx, di
sub al, 98
add bl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
cmovns bx, di
sub eax, 2
and rax, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rax]
add bl, cl
test cl, -89
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
not rbx
sbb dx, si
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
