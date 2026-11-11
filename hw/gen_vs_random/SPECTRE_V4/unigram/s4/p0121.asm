.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, 41
add dl, 87 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rsi]
bt dx, 193
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
btr rdx, rdx
xor al, 55
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 79
mov rdi, -7956777892145474940
add cl, -62
test dil, -5
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
imul dl
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
cmp al, dil
add al, dl
cmp edi, 3
cmovbe rcx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
xchg esi, edx
or cl, cl
not dil
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
xor bl, 126
cmovl si, si
xor dx, 7
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
cmp al, cl
cmp cl, bl
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
or rdx, rax
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
add ax, 65
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi], 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
