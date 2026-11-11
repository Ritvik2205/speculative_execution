.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
test cl, 12
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
add ax, -10746
lea edi, qword ptr [rcx]
sub al, -75
jmp .bb_0.1
.bb_0.1:
cmp di, -78
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
add di, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
