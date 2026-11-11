.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
or bl, 96
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
xor dl, 71
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
or bl, cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
