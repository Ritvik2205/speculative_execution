.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and sil, -55
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea ax, qword ptr [rbx + rdi + 52]
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jnp .bb_0.4
jmp .exit_0
.bb_0.4:
xchg al, cl
cmp al, 62
add ecx, 44
test al, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
