.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 40 # instrumentation
btc rdi, rdi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, cl
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
lea ax, qword ptr [rdx + rbx]
sub cl, -21
sbb cl, dl
sbb cl, 105
mov dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
