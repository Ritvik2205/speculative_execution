.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edx
and al, bl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor dl, dil
xor rdx, -59
and cl, -6
test rsi, 4
or al, cl
jmp .bb_0.1
.bb_0.1:
or al, cl
and rax, 1886208862
and dl, -73
test rax, -2004802425
test edx, -1561252782
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
