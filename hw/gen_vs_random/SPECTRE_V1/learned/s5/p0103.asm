.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
lea bx, qword ptr [rcx]
or bl, dl
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
sub dl, sil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 17
sbb al, 49
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
sub al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
