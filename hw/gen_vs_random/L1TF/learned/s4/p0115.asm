.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
cmp si, 33
inc cl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
xor al, dl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
adc al, bl
xor ax, 22976
sbb dil, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
