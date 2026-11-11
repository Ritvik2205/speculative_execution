.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -24879
sbb dil, cl
cmp rbx, 45
or esi, 28
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], dil
sbb rbx, -117
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 15
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test bl, -92
and bl, 89
add eax, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
