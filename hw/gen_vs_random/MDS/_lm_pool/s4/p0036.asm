.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
or bl, -125
xor al, -89
and ax, -16061
xor rax, -270810088
or bl, sil
jmp .bb_0.1
.bb_0.1:
bt rcx, 66
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
or al, dil
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
jmp .bb_0.3
.bb_0.3:
test al, 91
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
test bl, al
bt cx, di
bt di, cx
xor al, -4
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
