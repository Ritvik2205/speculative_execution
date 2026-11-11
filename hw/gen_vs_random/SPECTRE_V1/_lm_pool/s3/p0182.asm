.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
test cl, -62
setno dl
add dl, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
sbb cl, 105
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
mov al, cl
and cl, 86
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
inc edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
