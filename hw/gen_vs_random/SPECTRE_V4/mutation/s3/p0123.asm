.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -35 # instrumentation
mov al, bl
cmovno ebx, esi
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
test rdx, rdx
sub di, si
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
test al, -38
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
or eax, -1213318393
and cx, bx
test edi, -1380439873
xor rdi, -72
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], -79
add eax, 953442933
cmp dl, 83
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 2
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
imul edx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], -1928332684
adc al, 43
cmovz rbx, rdx
cmp cl, al
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
cmovnle rcx, rcx
sub si, bx
inc dl
and rdx, 0b1111111111111 # instrumentation
test rdx, rbx
imul dl
add al, cl
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
xchg cx, ax
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
add cl, 31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
bts edx, 116
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], -1928332684
and bl, dl
cmp bl, al
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
cmovb ebx, ecx
add bl, al
and eax, -1555813586
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
