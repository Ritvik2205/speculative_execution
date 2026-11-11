.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
sbb bl, -98
sub al, 0
sub dl, al
sub al, 29
adc dl, cl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor dl, -123
and dl, al
sbb al, -43
and cl, dl
cmp cl, dl
adc edx, -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
