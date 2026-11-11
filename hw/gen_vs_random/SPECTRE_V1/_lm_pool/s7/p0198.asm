.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 96
sbb al, 33
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 96
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
test al, -71
jmp .bb_0.1
.bb_0.1:
test bl, -8
sub cl, -47
test bl, -8
xor dil, dl
and cl, -57
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
