.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 23
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
btc rcx, 58
or bl, dil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 41
or bl, 127
xor cx, -18
test bl, -114
xor dl, dil
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
