.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 53
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
or al, bl
mov rbx, 9101099553822202722
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], si
cmovnbe eax, edi
and sil, -49
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rdx
imul dl
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
cmovz edx, esi
and rcx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rcx]
mov edx, eax
and dil, 96
sub sil, bl
add al, 5
sub al, 119
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and eax, -37
or ecx, 56
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], dx
cmovz eax, ecx
dec al
sbb edi, 57
or dl, 56
cmovz eax, ecx
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], 11
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
test dx, 16
test eax, -558243208
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
mov dx, 80
adc edi, 41
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 88
and rax, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rax]
cmovnbe bx, si
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
cmp ax, dx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
sub al, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
