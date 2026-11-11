.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdx]
xchg ebx, eax
add al, sil
adc dil, cl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
