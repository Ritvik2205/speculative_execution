.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 21 # instrumentation
adc dx, 45
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
and bl, -56 # instrumentation
cmovnle esi, edi
xor cl, dil
lea ax, qword ptr [rcx + rsi + 24]
jmp .bb_0.2
.bb_0.2:
test dl, -37
xor cl, sil
xor ax, -24879
lea ax, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
