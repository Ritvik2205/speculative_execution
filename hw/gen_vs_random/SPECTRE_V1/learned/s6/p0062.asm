.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
sub al, dil
lea rdx, qword ptr [rsi + rdi + 44]
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and cl, bl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
sub rax, -1628299544
lea rax, qword ptr [rdi + rcx + 87]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
sub cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
