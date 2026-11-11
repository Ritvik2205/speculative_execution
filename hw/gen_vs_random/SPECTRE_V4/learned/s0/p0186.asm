.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
or edx, ecx
test cl, 78
xor dl, al
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
adc al, dil
add al, -99
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
add ax, 6414
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
sub dl, dil
sub al, 127
mov bl, al
xor cl, sil
add cl, bl
cmp dil, 101
and al, sil
sbb al, 95
xor al, dl
or rax, -943474997
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
test al, 27
sbb al, dl
cmp bl, 12
test dl, al
or bl, 80
adc sil, 77
adc bl, -20
mov dl, dil
or sil, cl
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
add dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
