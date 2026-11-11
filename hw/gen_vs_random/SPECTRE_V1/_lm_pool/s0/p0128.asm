.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 45
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
test cx, -17886
lea rcx, qword ptr [rsi + rdi]
lea rbx, qword ptr [rcx]
add al, -13
test al, 34
xor ax, 913
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
add eax, 1938514106
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jnle .bb_0.4
jmp .exit_0
.bb_0.4:
test al, 59
lea rdx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
