.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
test al, -75
dec al
and dl, -92
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub ecx, 99
and cl, bl
add bl, al
sbb al, bl
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
