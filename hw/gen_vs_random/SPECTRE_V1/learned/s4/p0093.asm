.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 36
inc rdi
sbb dil, -106
or ecx, 50
lea eax, qword ptr [rdx]
sub bl, -6
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xchg al, dil
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
