.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
xor sil, sil
and sil, cl
cmp cl, -89
cmovnle eax, ecx
adc sil, bl
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
sbb al, dl
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
