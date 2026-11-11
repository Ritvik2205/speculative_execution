.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
add cl, bl
add dil, 72
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
test cl, -33
add sil, -68
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
bt esi, 23
sbb bl, dil
sbb bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
