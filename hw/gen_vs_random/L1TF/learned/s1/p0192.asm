.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, sil
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 30
xor ax, 27703
xor al, sil
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb al, dl
jmp .bb_0.2
.bb_0.2:
sub al, -97
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
