.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test dil, -126
or bl, -5
or rax, -82
sbb edi, 10
or al, -57
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
test al, -70
jmp .bb_0.3
.bb_0.3:
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
