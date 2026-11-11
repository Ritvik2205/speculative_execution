.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, dil
test cl, 91
and eax, -574348013
not bl
test eax, 1838539683
and dl, -73
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
test cl, -18
or cl, al
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and ax, 19224
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
