.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -19
sbb al, cl
sbb al, 49
xor dl, 71
adc dl, 107
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
and bl, 124
and dl, -92
add bl, -95
xor al, sil
cmp esi, 66
and al, dil
add cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
