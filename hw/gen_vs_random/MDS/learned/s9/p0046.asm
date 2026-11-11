.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 30
xor al, cl
xor bx, 48
test al, cl
or sil, bl
test al, 127
and bl, 68
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
xor dil, 81
or sil, -78
test sil, cl
or sil, cl
and rax, 452940266
xor ax, -16696
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
