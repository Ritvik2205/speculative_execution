.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
test al, -32
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
sbb al, 92
jmp .bb_0.1
.bb_0.1:
sbb al, dl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
xchg edi, ecx
btc si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
