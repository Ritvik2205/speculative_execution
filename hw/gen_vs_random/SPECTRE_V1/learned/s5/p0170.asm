.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb eax, esi
sub rax, -1628299544
test sil, 47
and al, dil
or edx, 22
test dil, -116
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
lea rcx, qword ptr [rax]
sbb al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
