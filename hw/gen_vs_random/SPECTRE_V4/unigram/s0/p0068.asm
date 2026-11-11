.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, ax
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 82
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
test bx, 24072
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edi
and cl, 32
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
add cl, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 93
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 57
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
adc cl, -86
xchg edi, edi
and esi, 126
cmp edx, eax
bswap eax
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -8
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
cmp dl, al
neg rax
not bl
and rsi, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
sub edx, edi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 55
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
add si, bx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
adc bx, 52
add sil, -18
xchg rbx, rax
and rax, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rax]
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
