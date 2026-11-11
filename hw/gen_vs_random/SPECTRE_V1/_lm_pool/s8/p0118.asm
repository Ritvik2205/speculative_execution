.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
xor al, 78
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, -127
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
jo .bb_0.3
jmp .bb_0.4
.bb_0.3:
adc bl, -76
test al, dl
js .bb_0.4
jmp .exit_0
.bb_0.4:
lea dx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
