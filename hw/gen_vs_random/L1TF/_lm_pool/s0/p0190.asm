.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
sbb ecx, 79
or rax, -82
sub rax, -2089384489
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
xor esi, 80
bt esi, ebx
xor dil, -42
sbb cl, dil
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
