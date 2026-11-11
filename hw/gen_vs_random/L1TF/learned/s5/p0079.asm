.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
xor al, 89
and sil, -90
jmp .bb_0.1
.bb_0.1:
and ax, si
jmp .bb_0.2
.bb_0.2:
test al, dil
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
test dil, -126
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
