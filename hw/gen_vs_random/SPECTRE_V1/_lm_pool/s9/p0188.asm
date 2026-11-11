.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
test cl, -33
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
sbb dil, -93
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
adc dil, 96
test dil, -116
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
setns dl
lea rbx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
