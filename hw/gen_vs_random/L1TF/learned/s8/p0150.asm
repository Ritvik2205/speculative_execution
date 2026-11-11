.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 26813
and dil, 58
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
add dl, -52 # instrumentation
adc dx, 20
test al, -84
and bx, 59
xor rdi, -80
xor dil, -42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
