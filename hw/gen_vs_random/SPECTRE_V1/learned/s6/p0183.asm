.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
sub cx, 75
sub bl, -19
sub dil, cl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add cx, -103
mov cl, bl
sbb eax, 2098460225
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
