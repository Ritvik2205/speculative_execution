.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, -48
and dx, 20
or dil, 98
dec dil
test cl, dl
and al, cl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 89
adc bl, 102
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
