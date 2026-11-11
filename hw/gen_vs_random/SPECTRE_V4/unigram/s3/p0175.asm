.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, rsi
add bl, 102 # instrumentation
cmovnp ebx, edi
sbb esi, 18
movsx edx, cl
add ax, bx
and edi, esi
btr bx, dx
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 44
adc bl, 0
cmovbe rsi, rdx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], ax
sbb cl, bl
imul dl
cmovl bx, di
adc dl, 7
or dl, 71
mov bx, 27738
mov cl, dil
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 50
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
bt rsi, rsi
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
cmp dl, dil
cmovnp rdx, rsi
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], ax
add dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
cmovs rax, rdx
or eax, 1470564945
movsx edi, bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 27
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rax
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
and sil, -84
imul eax, edi
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
imul cx, cx
cmovnb si, si
movzx rdx, cx
movsx bx, sil
test al, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
