.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
sbb cl, -11
add al, dl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb bl, -88
jmp .bb_0.2
.bb_0.2:
sub al, 9
jmp .bb_0.3
.bb_0.3:
cbw
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
xor di, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
