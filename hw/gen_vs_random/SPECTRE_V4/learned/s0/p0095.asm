.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -12
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
test al, -38
cmp al, -78
and al, 5
dec al
or rbx, -108
xor al, -40
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
sbb bl, 121
or eax, 143573881
sbb bl, 121
add bl, -38
xor al, 106
and rax, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rax]
sbb cl, -69
inc eax
sub al, 55
dec bl
cmp cl, dil
sub cl, 78
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rcx
and sil, -84
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
bt dx, ax
xor dl, cl
and dil, 8
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 31
xor al, bl
and al, -1
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 28
and al, cl
add al, -32
bt si, di
and al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
