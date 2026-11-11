.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
bts rsi, 73
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
adc cl, al
jp .bb_0.3
jmp .exit_0
.bb_0.3:
cmp dl, -56
and rax, 1163013815
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
