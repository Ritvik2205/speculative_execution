.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
cmp rax, -1877933118
test cl, -24
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
test bl, -8
jmp .bb_0.3
.bb_0.3:
cmp esi, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
