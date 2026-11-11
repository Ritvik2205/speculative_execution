.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -38
cmp rax, -1547540200
or cl, -55
sub cl, dl
add sil, cl
cmp dl, 95
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
or cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
mov al, 7
or al, -16
xor dl, al
and bl, -119
test al, 115
sub cl, sil
and cx, si
sub al, 0
cmp bl, dil
xor sil, 30
mov al, 9
adc al, sil
cmp edx, -95
cmp cl, 107
mov dil, al
and dil, al
xor dl, al
or sil, bl
movzx ebx, cl
test dil, -58
and dil, 8
or cl, sil
mov cl, bl
test dl, -102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
