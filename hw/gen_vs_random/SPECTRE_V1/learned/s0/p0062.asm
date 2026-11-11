.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
xor cl, 71
lea rsi, qword ptr [rcx + rbx + 2]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
sub dil, sil
jp .bb_0.4
jmp .bb_0.5
.bb_0.4:
and dl, -111
cmovle rsi, rdi
jnp .bb_0.5
jmp .exit_0
.bb_0.5:
cmp al, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
