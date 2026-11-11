.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
xor rax, -773894210
test cl, al
and cx, -2
and sil, -9
and cl, sil
test al, -81
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
bt ax, dx
and dil, -39
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 64
and ax, 13090
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
