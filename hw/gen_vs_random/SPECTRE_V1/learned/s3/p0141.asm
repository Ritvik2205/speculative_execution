.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
mov sil, dl
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
cmp sil, al
and sil, -55
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
test cl, -33
xchg rdi, rax
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
cmovnp ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
