.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
inc bl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
and dl, dl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rcx]
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
add dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
