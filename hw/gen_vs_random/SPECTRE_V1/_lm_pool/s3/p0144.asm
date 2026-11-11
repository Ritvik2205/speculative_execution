.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb ecx, 70
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and cl, cl
jl .bb_0.2
jmp .exit_0
.bb_0.2:
test al, 84
lea ax, qword ptr [rdx + rsi + 34]
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
