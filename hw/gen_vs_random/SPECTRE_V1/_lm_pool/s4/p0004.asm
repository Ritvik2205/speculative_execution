.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 42
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
sub al, -1
test al, 48
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
