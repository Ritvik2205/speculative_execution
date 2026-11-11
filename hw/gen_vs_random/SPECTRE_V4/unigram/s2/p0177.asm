.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ebx, -19
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
mul rbx
and si, dx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edx
mov ebx, 51969593
sub bl, 66
mov ax, bx
sub cl, al
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 69
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
xchg rdx, rdx
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
add al, -6
sub al, al
cmovp rax, rdx
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
mul dil
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rbx
xor di, 75
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rbx]
add dl, 29 # instrumentation
cmovnl rdi, rbx
inc dl
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], edx
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi]
sub dil, dil
sub cx, -114
add edi, 89
imul esi, esi
movzx ax, cl
and rsi, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
adc eax, 1307735127
sub cl, al
and rdi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdi]
adc al, al
sub cl, al
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
xor al, 48
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
xor ax, cx
or al, -16
mov cl, dl
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
