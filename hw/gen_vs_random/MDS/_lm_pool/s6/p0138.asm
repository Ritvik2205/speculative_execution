.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], si
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
test al, 22
and cl, -19
jmp .bb_0.3
.bb_0.3:
test al, 22
test ebx, -961564216
or al, 37
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
or rsi, 50
or bl, sil
jmp .bb_0.4
.bb_0.4:
test sil, 17
jmp .bb_0.5
.bb_0.5:
jmp .bb_0.6
.bb_0.6:
test dl, al
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
