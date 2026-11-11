.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, cx
add rsi, 74
lea rdx, qword ptr [rsi + rcx]
or al, -2
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test dil, -126
add dl, 22
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
bt esi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
