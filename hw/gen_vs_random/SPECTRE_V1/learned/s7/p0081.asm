.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
btc rax, rax
xchg esi, edx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, dl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
lea ecx, qword ptr [rax]
and al, 33
sbb dl, cl
sbb al, 104
sbb sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
