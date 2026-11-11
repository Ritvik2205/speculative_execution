.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
lea di, qword ptr [rdi]
sbb al, dl
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
test bl, -8
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
lea rbx, qword ptr [rax + rdi + 18]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
