.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 3
btc bx, 58
xor dil, -5
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
xor dl, bl
xor bl, sil
jmp .bb_0.1
.bb_0.1:
xor al, 8
test bl, -114
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
test al, 91
xor al, 55
jmp .bb_0.2
.bb_0.2:
xor al, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
