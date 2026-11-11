.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add bl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rax, 1994547909
jmp .bb_0.3
.bb_0.3:
add dil, 88
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
jmp .bb_0.4
.bb_0.4:
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
or rcx, 85
jmp .bb_0.5
.bb_0.5:
test cl, 31
or ebx, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
