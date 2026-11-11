.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 31
test al, 59
xor dl, 71
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
and dil, -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
