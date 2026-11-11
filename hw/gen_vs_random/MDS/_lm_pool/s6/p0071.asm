.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, cx
bts rax, rsi
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
xor dil, 8
btc bx, 104
or rbx, -72
and dx, 3
jmp .bb_0.1
.bb_0.1:
test sil, -96
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and eax, 33
and dil, -62
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
xor al, 99
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
xor al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
