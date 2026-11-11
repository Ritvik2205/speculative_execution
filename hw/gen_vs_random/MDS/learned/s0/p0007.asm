.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
or cl, 7
or rcx, -17
jmp .bb_0.1
.bb_0.1:
cmovnp rdi, rsi
xor cl, 98
or al, al
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
test rsi, 38
test al, -7
jmp .bb_0.2
.bb_0.2:
bt cx, di
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
xor ax, -1005
xor al, 115
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
test dl, al
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
