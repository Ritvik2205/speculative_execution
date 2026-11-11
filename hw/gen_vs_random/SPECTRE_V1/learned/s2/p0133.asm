.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts cx, cx
cmp al, dl
and cl, -57
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rdx + rsi + 58]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
and bl, 87
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
xor ax, 913
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
