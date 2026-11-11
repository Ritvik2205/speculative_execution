.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov cl, bl
test cl, bl
sbb dl, -106
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
xor al, sil
cmp al, 109
and cl, al
adc dil, al
cmp al, -122
sbb al, -4
and ax, 26513
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and al, 100
test bl, 87
jmp .bb_0.1
.bb_0.1:
xor al, bl
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
xor al, bl
xor al, 118
sub dl, 107
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
xor al, 57
xor al, 23
sbb cl, 40
add dil, -61
sub al, dil
and al, 59
adc dl, cl
mov dil, 81
mov al, dil
and dil, 8
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
