.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 104 # instrumentation
mov ecx, 22
lea rax, qword ptr [rdx + rsi + 37]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
sbb dil, al
test dil, -126
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
