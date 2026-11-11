.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rbx, rax
not rdi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xchg al, cl
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and dil, bl
add cl, al
lea ax, qword ptr [rbx]
test cl, -33
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
