.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts esi, 61
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
test dl, dil
and rdx, 99
test cl, -123
or al, 74
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
jmp .bb_0.2
.bb_0.2:
test al, 127
or bl, 43
test al, -81
xor ax, -5889
bt dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
