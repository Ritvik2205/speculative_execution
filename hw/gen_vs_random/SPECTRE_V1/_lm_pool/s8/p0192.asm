.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
sbb dl, sil
sbb al, -112
or si, 12
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
test rdx, 1657596343
sbb bl, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
