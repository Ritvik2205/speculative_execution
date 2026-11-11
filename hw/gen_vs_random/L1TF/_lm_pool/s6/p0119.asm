.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and eax, -409673666
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
xor al, 16
sbb sil, bl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmovnz rbx, rcx
js .bb_0.2
jmp .exit_0
.bb_0.2:
cmp ax, -14781
and dil, bl
sub cl, -49
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
