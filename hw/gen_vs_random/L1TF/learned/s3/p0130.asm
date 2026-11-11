.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 42
or al, -57
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and bl, cl
sbb al, -23
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
sbb cl, -11
jmp .bb_0.3
.bb_0.3:
xor al, 45
add al, bl
sbb al, 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
