.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
or al, -61
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and bl, 68
test rsi, 29
xor cx, -18
xor rax, -773894210
and al, 49
jmp .bb_0.1
.bb_0.1:
test dl, -85
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
and rax, 627810357
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
or dil, cl
test ax, 30932
and ax, -12519
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
