.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
or al, 100
jns .bb_0.1
jmp .exit_0
.bb_0.1:
adc al, -82
lea rdx, qword ptr [rax + rsi + 92]
add dil, 72
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
