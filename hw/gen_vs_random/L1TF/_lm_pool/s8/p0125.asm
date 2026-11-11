.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 7954
and al, -68
sbb edx, 23
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
xchg al, cl
jmp .bb_0.1
.bb_0.1:
test dil, -126
btc eax, 220
cmovbe eax, edi
test sil, al
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
