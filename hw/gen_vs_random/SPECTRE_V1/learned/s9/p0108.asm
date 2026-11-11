.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
sub sil, bl
and bl, -43
and cl, -57
sub bl, -6
sbb cl, dl
test al, 42
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
lea rbx, qword ptr [rax]
xor dl, bl
sbb al, dil
test rcx, -1420345926
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
