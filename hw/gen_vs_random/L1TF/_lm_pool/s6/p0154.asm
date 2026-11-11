.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
test dil, -126
lea rsi, qword ptr [rax + rbx]
add dl, cl
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and al, dil
sub rax, -1628299544
and bl, 89
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
