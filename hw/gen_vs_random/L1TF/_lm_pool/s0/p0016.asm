.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
and rdi, rsi
inc cl
and dil, -82
and dil, -22
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
sbb dl, -26
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test esi, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
