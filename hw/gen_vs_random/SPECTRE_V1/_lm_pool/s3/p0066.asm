.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
setz cl
add dil, -75
xchg rcx, rdi
xchg al, bl
xor sil, cl
sbb dl, bl
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
