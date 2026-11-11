.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -24
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea eax, qword ptr [rdx + rbx + 10]
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
