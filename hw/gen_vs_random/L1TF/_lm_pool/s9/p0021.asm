.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ecx
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
mov al, dil
sbb eax, -403815802
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
adc dil, 120
mov dil, 14
test dil, -126
cmp bx, 90
lea rdi, qword ptr [rsi + rax + 41973]
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
