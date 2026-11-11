.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
cmovnle rax, rdx
test al, -82
sbb bl, -88
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
sub cl, bl
jmp .bb_0.1
.bb_0.1:
and al, -68
and ax, 7954
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
