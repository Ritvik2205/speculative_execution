.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -401020526
and dx, 54
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
sbb cl, -11
jmp .bb_0.1
.bb_0.1:
inc rax
jmp .bb_0.2
.bb_0.2:
lea rcx, qword ptr [rbx + rdi + 27]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
or dx, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
