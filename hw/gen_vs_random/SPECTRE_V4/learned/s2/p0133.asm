.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
sbb al, -14
add cl, -62
add dl, al
sbb dil, cl
add dl, cl
adc dl, 87
test dil, sil
sub rax, 714283065
cmp cl, -80
sbb cl, bl
and al, -12
and al, -124
sub bl, al
xor ax, -17712
and al, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
