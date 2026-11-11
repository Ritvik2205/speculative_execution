.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
mov cl, al
sbb cl, dl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rbx, 54
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
sbb edx, -8
test bl, -8
test bl, -8
jnz .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
