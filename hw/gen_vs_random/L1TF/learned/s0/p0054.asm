.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
test edx, -541774418
jmp .bb_0.1
.bb_0.1:
test dil, -126
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
sbb rcx, 70
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
sub rax, -2089384489
jmp .bb_0.2
.bb_0.2:
and ax, 7954
jmp .bb_0.3
.bb_0.3:
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
