.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, edi
add al, 10
test al, 42
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rcx]
sbb dl, 127
add rax, 977059290
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
