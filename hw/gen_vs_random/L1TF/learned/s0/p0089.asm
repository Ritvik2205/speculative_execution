.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rax + rsi + 62]
test dil, -126
and eax, -409673666
jmp .bb_0.1
.bb_0.1:
adc bl, -14
jmp .bb_0.2
.bb_0.2:
lea rax, qword ptr [rdx + rsi + 92]
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
jmp .bb_0.4
.bb_0.4:
imul ecx, edx
or al, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
