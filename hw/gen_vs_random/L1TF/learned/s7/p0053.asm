.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and dl, -49
or dl, al
sbb al, 61
and cl, al
sub al, dl
cmovnle rsi, rdi
sbb dl, cl
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
or rax, 1808026647
sub al, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
