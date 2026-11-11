.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
btc cx, si
dec dx
adc rax, 1682231791
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
xor si, -73
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
cmp sil, 113
sub rbx, 101
dec ebx
mul al
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
imul ax, bx
xor ebx, ebx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
or edx, 0
cmp esi, -84
sub al, 26
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
or cl, -55
adc bl, dl
btc rcx, 68
sub bl, dil
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -2
adc cl, bl
or di, 2
or si, -84
sub ebx, 50
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
and ebx, esi
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], ax
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
neg bl
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], -27
cmp rdx, -49
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
sbb al, 102
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
add sil, -18
xor ax, 20236
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
