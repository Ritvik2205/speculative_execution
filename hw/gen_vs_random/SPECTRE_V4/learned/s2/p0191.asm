.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 5
or rax, -2144083737
or al, bl
and al, 92
sbb al, 95
adc bl, cl
test dl, 114
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
cmp dil, 101
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
or al, -88
adc dil, -17
or cl, -104
sbb bl, -98
and dl, -104
and ax, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
