.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
sbb cl, al
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg cl, sil
cmp bl, al
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
jns .bb_0.3
jmp .exit_0
.bb_0.3:
adc al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
