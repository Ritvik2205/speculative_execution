.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 78
sub dl, sil
sub bl, -6
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
xor dl, bl
test dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
