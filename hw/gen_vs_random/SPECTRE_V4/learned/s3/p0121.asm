.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
test dil, bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 25
xor ax, 30500
adc ebx, -55
sub al, 86
test al, 57
sbb edx, 38
sub al, 26
not rbx
add sil, cl
and dl, 124
add al, dil
xor dil, cl
neg al
cmp edi, 3
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
dec sil
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
or dl, sil
add bl, -38
sub bl, 56
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
sub bl, dil
cmp cl, al
and al, 92
cmp rax, 2052654950
mov cl, 14
cmovno bx, cx
sub sil, cl
or al, dl
xor rax, -98
adc sil, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
