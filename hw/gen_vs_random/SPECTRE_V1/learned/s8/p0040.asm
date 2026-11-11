.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 37
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], 94
sub al, dil
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
and dil, sil
lea rsi, qword ptr [rdx + rcx + 57579]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
or bx, 9
sub bl, dil
add eax, 1938514106
lea rax, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
sbb bl, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
