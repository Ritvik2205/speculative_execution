.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
sbb sil, dl
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rax]
jmp .bb_0.2
.bb_0.2:
cmp dl, -115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
