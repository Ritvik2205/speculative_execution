.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -71 # instrumentation
adc edx, edx
and al, -68
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
neg sil
adc bl, dl
and ax, 37
xor dl, bl
xor bl, sil
sbb al, 92
cmovle rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
