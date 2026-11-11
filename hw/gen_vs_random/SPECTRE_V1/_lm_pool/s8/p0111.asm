.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb eax, ecx
sbb ebx, 5
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 48
and rax, 2134929425
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
