.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
test cl, -62
xor eax, 55
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
and cl, -57
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
test bl, -8
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
movzx edx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
