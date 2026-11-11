.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
test bl, 12
or al, cl
lea rsi, qword ptr [rcx + rdi]
and al, -68
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 13
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rbx]
jmp .bb_0.2
.bb_0.2:
test al, -70
jmp .bb_0.3
.bb_0.3:
test cl, 60
or si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
