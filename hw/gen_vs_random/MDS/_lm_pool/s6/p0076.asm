.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
or di, 15
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
xor dil, sil
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and ax, -10351
not cl
or al, cl
xor al, dil
jmp .bb_0.1
.bb_0.1:
test dil, 46
or sil, al
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
xor cl, 24
test dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
