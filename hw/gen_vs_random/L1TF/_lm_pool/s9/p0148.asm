.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -88
jmp .bb_0.1
.bb_0.1:
or cl, 105
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rax, 1163013815
jmp .bb_0.2
.bb_0.2:
test dil, -126
or cx, 2
add eax, 109
jp .bb_0.3
jmp .exit_0
.bb_0.3:
lea rax, qword ptr [rdi + rsi]
sbb cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
