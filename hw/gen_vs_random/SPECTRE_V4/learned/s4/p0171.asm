.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -47
adc dl, dil
cmp cl, -80
xchg bl, al
sbb bl, 121
or cl, -104
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
or al, al
or al, -88
or bl, dil
sbb al, -39
cmp cl, bl
sub al, 59
add eax, -1398129660
and al, cl
xor al, -6
add cl, bl
sub al, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
