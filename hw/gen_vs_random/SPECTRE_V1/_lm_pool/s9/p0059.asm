.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
setz bl
sub bl, sil
add bl, -95
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
or ax, 18658
sub rax, -1628299544
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, 105
sub rcx, 13
lea ax, qword ptr [rdx + rbx + 82]
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
