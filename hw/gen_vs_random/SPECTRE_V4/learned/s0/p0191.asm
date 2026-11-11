.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
test dl, 24
add al, cl
test al, 27
add dil, 105
adc al, -117
sbb al, -39
cmp rcx, -121
xor sil, dl
mov dl, cl
sub dl, 107
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
xor al, -66
and dl, -104
and al, -118
or ax, -30990
test cl, -119
xor di, 15
sub al, dl
dec al
xor al, cl
inc cl
add rax, -1121139858
mov cl, 1
and sil, -84
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 41
bt rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
