.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
lea edx, qword ptr [rbx]
test dil, -116
movsx rdi, bx
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
bt eax, 78
add dl, dl
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
