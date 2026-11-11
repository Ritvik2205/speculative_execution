.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 4
test bl, 84
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], dx
lea rsi, qword ptr [rax + rbx]
cmovnp ax, bx
bts bx, 223
jmp .bb_0.2
.bb_0.2:
cmovnp rdx, rbx
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
and al, cl
adc bl, -14
and dil, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
