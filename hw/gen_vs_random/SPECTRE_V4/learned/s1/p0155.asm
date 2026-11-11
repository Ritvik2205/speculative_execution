.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, -118
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
mov bl, dil
test cl, -119
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
and dil, -61
add al, 40
adc dl, 82
sbb ax, 16480
xor di, 28
sub dl, -16
sub dl, sil
test cl, -31
cmp eax, -813838876
test edx, -38580719
sub dil, dl
sub bx, 24
cmp rbx, -91
adc dl, cl
test al, 72
or cl, -55
xor cl, -15
sub ax, 17434
xor al, bl
cmp al, 105
sub cl, al
sbb al, -4
and al, -118
and dl, -11
cmp al, 114
mov bl, dil
or al, dl
lea edi, qword ptr [rax]
and dil, -120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
