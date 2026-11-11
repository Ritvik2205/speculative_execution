.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, -818909344
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
neg al
imul dx, bx
xor rbx, rax
btc rax, rdx
sub ax, 24441
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sbb rax, 183833426
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 72
btr rsi, 24
mul rbx
cmovle edx, eax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
cmp al, 70
and al, -36
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
add sil, 110
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 45
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
cmp ax, 23131
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
add ecx, eax
adc al, bl
sbb cl, dil
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
test al, 80
cmp cl, 31
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
mov dil, -118
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
movzx rdx, cx
sub dl, sil
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
add eax, -1796699558
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
add sil, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
