.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edi
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
or edx, 96
and cl, -57
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
setns cl
and dl, -111
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
