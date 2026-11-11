.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 75
test bl, -8
add cl, -127
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdx]
and rax, -273199823
adc al, -82
add bl, cl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
