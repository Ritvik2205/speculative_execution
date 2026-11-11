.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 84
test sil, -96
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
xor dl, dil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
or al, dil
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
or al, -75
bts ax, 22
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
cmovnp rdx, rbx
test edx, -1561252782
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
