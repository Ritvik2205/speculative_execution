.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
test rdi, 71
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
xor dil, -124
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
bts rdx, rax
or al, 24
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
test dil, sil
test al, 127
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
test cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
