.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
btr si, di
test bl, 45
sbb al, sil
jmp .bb_0.1
.bb_0.1:
bt rcx, 38
jmp .bb_0.2
.bb_0.2:
cbw
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
sub dil, -39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
