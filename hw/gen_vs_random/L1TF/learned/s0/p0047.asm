.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -84
lea rax, qword ptr [rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
sbb dl, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
