.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
sbb al, 61
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 56
and dl, 32
sbb rax, 2044012157
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
