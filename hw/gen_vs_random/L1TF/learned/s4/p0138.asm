.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, dx
bts edx, 28
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
add al, cl
test al, -70
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and edx, 21
jmp .bb_0.1
.bb_0.1:
sbb al, dl
sub di, bx
xor eax, 965442135
and ax, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
