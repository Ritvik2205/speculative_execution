.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
cmovbe di, dx
test sil, 29
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rcx + rsi + 71]
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
xor sil, dil
or bl, dl
sbb cl, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
