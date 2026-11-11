.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and sil, -56
jmp .bb_0.1
.bb_0.1:
test dil, -51
jmp .bb_0.2
.bb_0.2:
test al, dil
test cl, al
xor bl, 67
and cl, -111
xor edx, 94
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rcx
and dl, dil
and eax, 454700988
jmp .bb_0.3
.bb_0.3:
test al, dil
and di, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
