.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
cmp cx, 19
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
or dil, 80
add al, cl
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
add dil, sil
neg dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
