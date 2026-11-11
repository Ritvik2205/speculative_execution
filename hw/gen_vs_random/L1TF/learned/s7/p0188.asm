.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
lea di, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -98
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
or rcx, 49
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
sub rdx, 53
jmp .bb_0.2
.bb_0.2:
not cl
lea si, qword ptr [rdi + rsi + 11]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
