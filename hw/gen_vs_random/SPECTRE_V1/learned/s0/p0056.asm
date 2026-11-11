.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -98
and al, -23
or eax, -126
sbb sil, -78
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, al
or dil, cl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
