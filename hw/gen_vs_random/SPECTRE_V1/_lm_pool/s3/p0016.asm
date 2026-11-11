.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 92
or bl, dl
sbb rax, 1161375577
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb rcx, 29
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and bx, -118
test ax, 19339
or bl, 73
cmp ax, 7452
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
