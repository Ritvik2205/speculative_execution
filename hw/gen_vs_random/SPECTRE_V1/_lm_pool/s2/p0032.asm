.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 34
xor rdi, 72
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
xchg rax, rcx
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
jle .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
sbb cl, dl
sbb dl, 127
test bl, -8
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
