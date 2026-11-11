.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, dl
sbb bl, dil
mov al, dil
and dil, 98
mov bl, dil
test cl, -62
add dl, dil
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
