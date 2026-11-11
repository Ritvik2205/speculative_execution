.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 41
mov dx, di
cmovz esi, eax
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
add bl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
cmovle rdx, rax
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdx
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
add al, bl
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
sbb cl, 127
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -21
neg bl
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ecx
and dl, al
btr rdx, rbx
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -79
xor dl, bl
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
test esi, -222751961
bt cx, dx
add dl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
sbb ax, 10407
imul dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
xor bl, 27
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], -25
xor rcx, -111
dec rbx
cmovp rdx, rax
test dil, -83
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
bswap rcx
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and al, bl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 73
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -4112
test cl, cl
adc bl, bl
bts esi, 18
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
