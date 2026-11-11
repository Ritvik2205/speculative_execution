.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -66
sbb al, -107
sbb al, 66
and dil, -93
xor bl, sil
sbb al, dl
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
xor dil, -37
mov dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
