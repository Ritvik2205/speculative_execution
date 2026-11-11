.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, cx
lea rdi, qword ptr [rax + rbx]
jmp .bb_0.1
.bb_0.1:
test dl, 84
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
and al, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
