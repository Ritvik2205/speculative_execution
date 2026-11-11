.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 58
xor rsi, 48
and cl, 56
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 72
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
jmp .bb_0.1
.bb_0.1:
add sil, -61
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
xor cx, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
