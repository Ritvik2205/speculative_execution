.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rbx, -3
test sil, 1
test dl, -81
adc esi, 93
adc cl, -4
sub bl, cl
add al, dil
and dl, cl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
sub al, 29
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and dl, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
