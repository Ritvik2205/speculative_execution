.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
test al, 59
sub rax, -1628299544
xor ebx, 38
sbb esi, 48
xchg bl, bl
setle dil
setno dil
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
sbb dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
