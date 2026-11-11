.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov al, dl
add al, -44
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and dx, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
