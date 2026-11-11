.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test al, -81
and dil, -39
test dil, -80
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
btr si, bx
jmp .bb_0.2
.bb_0.2:
or rbx, -72
or rax, 302048971
or al, 16
test al, dl
and al, dil
xor sil, -46
or bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
