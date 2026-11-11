.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
test al, -126
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
sub cl, al
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
jb .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
lea cx, qword ptr [rdx + rdi]
lea rax, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
