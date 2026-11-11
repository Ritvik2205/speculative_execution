.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and sil, 37
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
btc ax, di
sub rsi, 11
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
