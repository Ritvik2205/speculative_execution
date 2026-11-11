.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 12 # instrumentation
cmovnb eax, edx
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub rsi, 97
sbb dil, al
test rbx, 81
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jno .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
cmp ax, 7046
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
inc dil
sbb al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
