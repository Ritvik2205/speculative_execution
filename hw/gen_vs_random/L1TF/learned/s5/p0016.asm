.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 21 # instrumentation
adc dx, 23
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovnle rcx, rax
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
bt esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
