.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
test cl, -24
sbb al, -114
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
or al, cl
sub rdi, 99
mov cl, bl
cmp rbx, 37
test dl, 113
jp .bb_0.1
jmp .exit_0
.bb_0.1:
adc al, dil
or bx, 9
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 40
bt esi, 62
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
