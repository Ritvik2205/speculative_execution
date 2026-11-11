.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 37
sub al, -3
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
and rbx, -88
jmp .bb_0.1
.bb_0.1:
cmovnp di, cx
xor cl, al
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
and ax, 26813
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
