.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ax, ax
lea ax, qword ptr [rsi]
sbb dil, sil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc dl, dil
jp .bb_0.2
jmp .exit_0
.bb_0.2:
add bl, dil
or eax, 848176907
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
