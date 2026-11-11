.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
and ax, 29207
bts rcx, rbx
and bl, 34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
test al, 66
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and cl, cl
cmovnz edi, ecx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
bts rbx, rsi
or rbx, -72
xor si, 91
and bl, -5 # instrumentation
cmovnl cx, di
btc rdx, rdx
and rax, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rcx]
or ebx, esi
bt bx, 253
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
