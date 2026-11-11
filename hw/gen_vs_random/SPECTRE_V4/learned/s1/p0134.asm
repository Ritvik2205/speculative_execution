.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 26
xor bl, al
or bl, 61
cmp cl, dil
adc dil, cl
or rdx, 1
sbb al, 95
or al, -47
sbb dil, 23
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
xor al, 124
xor ax, 20236
adc bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
