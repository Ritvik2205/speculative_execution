.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bl, dil
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
add al, -4
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 36
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 23
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], cx
test rbx, rax
btc rax, 72
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
and rdx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rdx]
or al, sil
and cx, cx
or rcx, rax
imul bx, di, 27
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
sub al, -84
movsx ax, sil
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 60
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
and sil, -84
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
or cl, al
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
imul dx, di, 53
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 87
add cl, cl
cmovz ebx, eax
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dil
cmovno ebx, esi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], dx
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
inc al
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
sub sil, 71
btc ax, bx
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 97
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], -39
and sil, -84
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdi
xor al, dil
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
adc rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
