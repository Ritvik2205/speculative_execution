.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
sub dl, 105
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 87
add al, dil
and ax, 26813
and di, 1
test dil, -126
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovnp rsi, rdi
sub dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
