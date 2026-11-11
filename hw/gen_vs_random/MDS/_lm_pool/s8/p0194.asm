.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
or bl, 100
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
bt cx, bx
xor ax, -23364
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
or dil, -76
xor sil, 27
jmp .bb_0.1
.bb_0.1:
test al, 127
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and bl, 68
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
or al, 24
bt rdi, rax
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
