.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 112 # instrumentation
adc bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
sbb cl, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 10
or bx, 9
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
