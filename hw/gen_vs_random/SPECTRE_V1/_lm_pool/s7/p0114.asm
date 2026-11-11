.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
xor al, cl
sub dl, dil
sbb cl, al
mov dil, bl
sbb al, bl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
lea ebx, qword ptr [rdi]
xor cl, dil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
adc dil, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
