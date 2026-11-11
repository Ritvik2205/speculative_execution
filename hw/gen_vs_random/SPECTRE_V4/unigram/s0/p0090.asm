.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, dl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
imul bx
add bl, -18 # instrumentation
mov rax, rcx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 7
add dl, -114 # instrumentation
cmovl ax, cx
movsx ebx, dil
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edx, ecx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 46
xor dl, 95
test dl, 19
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
mov esi, ebx
sbb cl, -104
and rdx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 26
add ax, -15653
inc al
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
add rdi, -94
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 100
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], ax
movzx ax, al
cmovnle rdi, rdi
mov esi, 67
xchg esi, edx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
or ebx, 98
sub al, 98
cmp dl, 4
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
add sil, 26
cmovnz eax, edi
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
adc edi, 86
test esi, 1
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
sbb eax, 2051746726
movzx ebx, bl
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
