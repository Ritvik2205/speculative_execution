.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 41
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test bl, -8
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
test bl, -8
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jb .bb_0.3
jmp .exit_0
.bb_0.3:
sbb al, 66
sbb bl, al
and rax, 2134929425
cmp cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
