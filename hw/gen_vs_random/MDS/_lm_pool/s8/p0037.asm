.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
bts rcx, rdi
and bl, 68
xor dl, 34
test bl, -14
and al, cl
jmp .bb_0.1
.bb_0.1:
btc ecx, 65
xor cl, dil
and cl, -6
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
and dil, dil
test cl, 62
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
and di, 91
test rsi, 84
xor ax, -16696
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
