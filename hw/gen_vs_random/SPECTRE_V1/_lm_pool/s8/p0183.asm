.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 12 # instrumentation
cmovnb ebx, esi
add dil, -75
sbb sil, -78
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
xchg dil, dl
jmp .bb_0.2
.bb_0.2:
test dl, 113
and cl, -57
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
bts ecx, 94
movzx edi, si
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
