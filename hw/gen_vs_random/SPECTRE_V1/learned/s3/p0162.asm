.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
test dl, 113
sub sil, -18
sbb eax, 125
add dl, 47
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
cmp ebx, -33
xor dil, -37
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
sbb al, sil
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
