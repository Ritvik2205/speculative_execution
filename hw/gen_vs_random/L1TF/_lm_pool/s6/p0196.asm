.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
jmp .bb_0.1
.bb_0.1:
test bl, 84
or al, -5
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb al, cl
and cx, -79
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
xor bl, dl
cmovb bx, di
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
