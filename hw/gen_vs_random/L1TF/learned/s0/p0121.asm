.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
adc al, cl
and ax, 7954
sub cl, sil
and rax, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
sbb cl, -11
sub dil, -70
lea rsi, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
