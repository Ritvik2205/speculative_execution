.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, ecx
add dl, -4 # instrumentation
cmovp ax, si
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
sbb bl, sil
and rcx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rcx]
add dl, 74 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
bts cx, 158
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], -99
add rax, 1049076260
add al, -112
imul dl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
cmovl edx, ebx
cmovz edx, ebx
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 8
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 26
and eax, -1555813586
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rsi
imul dl
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
neg dl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
cmovnbe ebx, esi
cmovnz rax, rbx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 96
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
adc si, -110
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dil
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
neg esi
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 4
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
mul rdx
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rbx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
