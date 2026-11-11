.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -75 # instrumentation
adc al, 79
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edx
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 94
cmovnbe bx, ax
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
adc dl, al
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
movzx di, bl
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
imul rcx, rdi
add rdx, rdi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
cmovz cx, cx
cmovnle rax, rax
xor al, dil
xchg ax, bx
cmovle rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rsi]
dec bl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
cmp cl, 32
add ebx, ecx
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 86
cmp dl, 77
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 7
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 10
sbb al, 123
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
cmovnb esi, edx
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
add sil, sil
add edi, 11
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 66
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 41
mul rbx
xchg bx, dx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 51
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
