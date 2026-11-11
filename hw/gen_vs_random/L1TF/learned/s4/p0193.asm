.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 83
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
cwde
test cl, 40
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb sil, cl
sbb cx, 86
setb al
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
