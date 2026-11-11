.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, cl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
add dil, 72
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
jnle .bb_0.4
jmp .bb_0.5
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rcx]
cmp edi, 25
cmp dil, cl
jmp .bb_0.5
.bb_0.5:
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
