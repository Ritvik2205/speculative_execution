.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, al
cmp ax, -15031
btc cx, ax
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
cmovz esi, edx
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
sbb al, cl
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], cx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
or dl, 88
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], bx
adc bx, -89
cmovs bx, di
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 92
xchg cl, cl
test dx, di
sub edi, ebx
xchg dl, bl
neg dl
sub al, bl
cmp si, cx
cmp cl, 4
cmovs edx, eax
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 41
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
mov cl, sil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rsi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
mul ax
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], edx
sbb ebx, edx
not edx
cmovns bx, ax
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdi]
add bl, -72
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
