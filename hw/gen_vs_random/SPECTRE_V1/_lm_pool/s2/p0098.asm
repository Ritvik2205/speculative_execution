.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
add al, -109
sbb cl, 105
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
test al, dl
sbb bl, 79
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
sub al, -89
sbb al, bl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
