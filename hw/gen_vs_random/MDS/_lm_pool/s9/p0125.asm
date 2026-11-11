.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
and edi, 23
or cl, cl
and dil, dl
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and cl, -71
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
xor sil, 110
and sil, al
test al, -81
xor sil, 27
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
bt ax, dx
xor al, 99
xor di, -83
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
