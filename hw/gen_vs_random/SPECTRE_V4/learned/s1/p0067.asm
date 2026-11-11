.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, -62
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mov edx, ecx
test al, 66
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
imul cl
or al, 96
dec bl
cmovl rdi, rdx
adc sil, cl
test al, dil
add edi, eax
cmovnle cx, cx
add rdi, -94
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
and al, -127
sub cl, cl
and rcx, -102
cmovnb ax, ax
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
cmp dil, dil
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
sub rsi, 26
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
cmovp rdi, rcx
cmovnbe rbx, rsi
and cx, 17
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 97
xor edx, edi
bswap edi
cmovs di, di
sub rdx, 22
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], bl
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
