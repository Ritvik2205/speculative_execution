.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 98
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
jmp .bb_0.1
.bb_0.1:
xor dil, -5
test al, sil
and dl, cl
test al, 66
xor sil, -15
or dil, -76
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 11
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
btr cx, di
xor sil, -126
or al, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
