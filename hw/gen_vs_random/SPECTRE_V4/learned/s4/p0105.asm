.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, si
cmp rax, 1097504565
and al, 75
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
xor al, dil
cmp eax, 512128713
adc al, 43
and dil, al
cmp al, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
sbb al, 66
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 47
sbb al, 95
or al, 1
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
test cl, dil
and cl, -101
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
sub dl, -16
sbb sil, -124
and dl, 24
xor rdi, -72
xor ax, -22861
or rax, -943474997
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
cmp eax, 89
and dil, cl
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 64
add al, -82
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], -49
sub sil, cl
sub al, -84
test al, 57
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
