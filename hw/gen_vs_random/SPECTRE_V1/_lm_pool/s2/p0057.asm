.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 86
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, cl
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
