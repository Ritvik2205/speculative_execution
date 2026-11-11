.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
mov dl, 26
sbb cl, 105
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and dil, 98
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rcx, qword ptr [rdx]
lea eax, qword ptr [rdx]
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
adc edi, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
