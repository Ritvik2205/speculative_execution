.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 9
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
xor bl, dil
jmp .bb_0.1
.bb_0.1:
and di, 99
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
test al, dl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
xor dl, dil
xor al, sil
xor al, sil
btc cx, 115
xor rax, -91
xor sil, al
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rax, -2039117613
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
