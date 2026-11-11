.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo ax, si
xor cl, dil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
test al, -7
jmp .bb_0.3
.bb_0.3:
test rcx, -613256812
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 37
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
xor al, -26
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and al, dil
bt di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
