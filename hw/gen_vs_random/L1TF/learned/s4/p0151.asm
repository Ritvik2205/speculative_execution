.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -82
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 81
adc dil, 120
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
sbb ax, -14164
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 41
lea cx, qword ptr [rsi + rax + 95]
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
