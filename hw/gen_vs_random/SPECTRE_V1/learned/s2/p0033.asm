.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
setz dl
and cl, -57
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
sub al, sil
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jle .bb_0.3
jmp .exit_0
.bb_0.3:
adc esi, -66
and bl, al
sbb dl, 127
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
or al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
