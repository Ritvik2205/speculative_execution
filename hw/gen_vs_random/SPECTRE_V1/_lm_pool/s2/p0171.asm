.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 27
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
test dl, -7
and di, 69
sbb edx, 105
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
lea rdx, qword ptr [rsi + rdx]
sub dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
