.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, bl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], cx
or dil, 12
xor rax, -1657511731
jmp .bb_0.1
.bb_0.1:
or eax, edx
or dil, bl
or dl, sil
or sil, sil
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
or rcx, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
