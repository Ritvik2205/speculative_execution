.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, esi
and dx, 60
not bl
test dil, -51
xor bx, 5
xor dl, -43
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
xor dl, -59
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
test sil, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
