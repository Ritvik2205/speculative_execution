.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
inc rcx
or edi, 11
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
or rsi, -14
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, dil
jmp .bb_0.2
.bb_0.2:
sbb ebx, 97
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
adc dil, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
