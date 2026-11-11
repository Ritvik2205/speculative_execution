.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 36
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
sub dl, -16
xor al, -31
and al, 49
cmp bl, al
mov al, 90
add al, dl
adc dil, al
sub al, 86
or rdx, 1
add bl, sil
xor al, dil
sub rbx, 101
sbb cl, dil
test ax, -6841
and al, -12
or al, -88
sub rdi, 105
cmp al, -122
adc bl, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
