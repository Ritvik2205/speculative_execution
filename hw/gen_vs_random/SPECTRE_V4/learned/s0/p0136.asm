.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, 107
cmp al, -122
mov al, bl
sub bl, -89
dec cl
test dil, -5
or dl, al
cmp ebx, -19
sub dil, cl
xor dl, bl
and rax, -779592432
add al, -6
dec dil
adc dl, 51
xor rax, -111081832
sbb al, 57
or cl, sil
inc al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
xor ax, 45
adc al, cl
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
xor dil, al
cmovnbe esi, eax
xor cl, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
