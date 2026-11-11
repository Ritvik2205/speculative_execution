.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
lea bx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
lea ax, qword ptr [rsi + rdi + 76]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg dl, al
jns .bb_0.2
jmp .exit_0
.bb_0.2:
sbb bl, dil
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
setb sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
