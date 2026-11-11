.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
not edx
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
neg bl
add dl, 41
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
sbb dl, -99
test ecx, 11
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
test edi, -1249897727
cmovz ebx, ecx
test sil, cl
add al, -75 # instrumentation
adc al, 79
and rsi, 51
sub dl, 43
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 56
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 39
cmovb ax, ax
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 22
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
movzx edx, bl
sub si, cx
xor rbx, rdi
and ebx, 18
sub al, bl
and dx, 1
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], cx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], dx
and rbx, 69
imul bx, di, 89
adc al, dil
movsx esi, ax
btc rcx, 17
mov rsi, rax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
sbb al, -101
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 28
sub rcx, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
