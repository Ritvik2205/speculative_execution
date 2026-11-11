.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
add rbx, 99
sub bl, dil
jmp .bb_0.1
.bb_0.1:
xchg rbx, rax
test cl, 26
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and dil, -22
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
cmp di, 45
jmp .bb_0.5
.bb_0.5:
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
