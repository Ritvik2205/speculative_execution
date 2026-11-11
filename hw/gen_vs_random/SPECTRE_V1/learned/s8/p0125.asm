.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
and bl, -43
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
or sil, cl
and rax, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rax]
xor bl, dil
sbb al, dil
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
lea rdx, qword ptr [rdi]
xor sil, cl
js .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, dil
and al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
