.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
xor dil, -42
sub al, 9
add sil, dil
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb bl, dil
inc al
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
add ecx, 4
jmp .bb_0.3
.bb_0.3:
and edi, 24
mov bl, 35
sbb al, sil
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
