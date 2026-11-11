.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rdx, rdi
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
sbb al, sil
sbb cl, dil
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rsi + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
xchg dl, dl
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
sub dx, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
