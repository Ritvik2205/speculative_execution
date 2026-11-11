.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
or dil, 80
test al, bl
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
xor cl, dil
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
sub bx, 54
jmp .bb_0.2
.bb_0.2:
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
