.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -2
or al, -2
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
xchg ebx, ecx
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
sub rax, -15
cmp dil, 29
or rdx, -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
