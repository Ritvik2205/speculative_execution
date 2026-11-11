.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -64 # instrumentation
cmovnle eax, edi
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rcx + rax + 19]
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
adc dl, al
jmp .bb_0.2
.bb_0.2:
add cl, al
sbb cl, -11
test al, -56
add dl, sil
sub rax, 1806572419
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
