.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 24
and si, dx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], bl
sub bl, 56
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and cl, 126
and sil, al
mul cx
cmovno rax, rbx
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and dil, dil
add rdi, rax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 62
add cl, -59 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and cl, -128
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
test bl, cl
cmp eax, 89
adc rdi, 1
sbb sil, cl
mul ax
xchg rax, rbx
and rax, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rax]
cmp al, cl
sbb si, 11
xor dx, -43
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 2
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], ecx
sub dl, al
xchg rsi, rax
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rcx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 13
xor cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
