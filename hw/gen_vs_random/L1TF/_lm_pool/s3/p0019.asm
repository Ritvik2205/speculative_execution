.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 12
and al, -68
or al, -48
or al, -57
xor cl, 89
jmp .bb_0.1
.bb_0.1:
cmovnp rbx, rdi
bt edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
