.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
xor al, -42
adc cl, -19
add dil, -75
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
jle .bb_0.2
jmp .exit_0
.bb_0.2:
test ebx, -1465665890
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
