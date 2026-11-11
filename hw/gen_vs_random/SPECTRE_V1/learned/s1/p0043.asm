.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, dx
and dl, -109
cmp rbx, 26
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
and dil, cl
js .bb_0.4
jmp .bb_0.5
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
test al, 40
jno .bb_0.5
jmp .exit_0
.bb_0.5:
test edx, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
