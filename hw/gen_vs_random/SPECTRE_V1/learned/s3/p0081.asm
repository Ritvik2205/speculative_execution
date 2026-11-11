.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rbx, rdx
and cx, 17
and cl, cl
or dil, 98
add al, -44
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp cl, dl
xchg rcx, rdx
js .bb_0.2
jmp .exit_0
.bb_0.2:
sbb eax, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
