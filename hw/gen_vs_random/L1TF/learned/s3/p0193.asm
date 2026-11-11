.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
xor sil, dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
jmp .bb_0.2
.bb_0.2:
lea di, qword ptr [rcx + rax + 24]
adc dl, -12
lea ecx, qword ptr [rdx]
test rsi, rax
mov sil, bl
jmp .bb_0.3
.bb_0.3:
test cl, 62
add al, -80
adc edx, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
