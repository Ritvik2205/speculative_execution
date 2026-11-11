.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
add rdx, 95
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
cmovns rbx, rdx
lea ecx, qword ptr [rsi]
sub al, -66
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
add dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
