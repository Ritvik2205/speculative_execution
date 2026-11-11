.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rax
or dl, 41
sbb eax, -108
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, -55
sbb al, cl
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
