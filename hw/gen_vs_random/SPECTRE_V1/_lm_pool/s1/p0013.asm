.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -86
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and al, 33
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
lea rbx, qword ptr [rcx + rsi + 88]
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
