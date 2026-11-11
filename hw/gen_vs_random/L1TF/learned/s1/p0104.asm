.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and dl, -86
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
sbb dl, -26
jmp .bb_0.1
.bb_0.1:
lea rsi, qword ptr [rax + rsi + 82]
inc bl
sub al, -97
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
mov cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
