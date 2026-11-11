.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo ax, bx
and dil, -39
or rax, 302048971
xor al, -89
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
or al, sil
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
btc bx, 104
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
