.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 61
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], di
or cl, dil
jmp .bb_0.1
.bb_0.1:
test al, cl
xor al, bl
or di, 96
and ax, 19224
or al, -75
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
xor dl, bl
and dil, 125
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
cmovle bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
