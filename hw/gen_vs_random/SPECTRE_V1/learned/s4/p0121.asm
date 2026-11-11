.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 12 # instrumentation
cmovnb edx, edi
lea rcx, qword ptr [rsi + rdx]
sub bl, dil
sbb al, sil
xchg al, cl
and dl, cl
sbb ebx, 37
sub al, cl
test cl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
