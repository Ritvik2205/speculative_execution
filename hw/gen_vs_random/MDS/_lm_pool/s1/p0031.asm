.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
cmovp bx, cx
xor edi, 61
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
jmp .bb_0.1
.bb_0.1:
or sil, sil
and cl, -19
and dil, -62
test dl, al
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
test ebx, -2015966884
xor bl, cl
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
