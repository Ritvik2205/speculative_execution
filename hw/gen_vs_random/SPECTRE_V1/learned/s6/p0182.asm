.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
add al, -44
sbb al, dl
sbb dil, -106
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and dil, -93
test al, 42
lea di, qword ptr [rdx + rsi]
and bl, cl
and rbx, rsi
jmp .bb_0.2
.bb_0.2:
sub al, -89
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
