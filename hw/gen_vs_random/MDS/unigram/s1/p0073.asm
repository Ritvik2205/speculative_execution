.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, 2
and cl, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
cmovl rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 44
and dl, -7
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
btr si, 52
xor bl, 2
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 55
and rsi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rsi]
or bl, -98
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 24
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 16
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 91
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rcx
or cl, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
