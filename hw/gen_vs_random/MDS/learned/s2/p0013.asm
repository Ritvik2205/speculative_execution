.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 35
and cx, -2
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
test dl, al
test dl, cl
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
and sil, sil
jmp .bb_0.1
.bb_0.1:
test sil, -96
and dl, cl
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
test al, 91
test al, dil
xor dl, 8
or cl, 7
xor sil, -46
cmovnp si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
