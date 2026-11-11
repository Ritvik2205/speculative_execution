.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
lea rbx, qword ptr [rdi]
cmp al, al
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 19
movzx eax, cx
jnl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnz .bb_0.3
jmp .exit_0
.bb_0.3:
lea di, qword ptr [rbx + rsi]
lea di, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
adc al, 36
test rax, 1469613902
lea di, qword ptr [rax]
lea di, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
