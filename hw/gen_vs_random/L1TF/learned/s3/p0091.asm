.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
jmp .bb_0.1
.bb_0.1:
test al, -32
sbb sil, -19
not bl
bt dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
