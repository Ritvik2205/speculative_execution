.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
sub al, cl
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
add al, 10
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
bt cx, 83
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
or dil, 98
sub si, 32
movzx edx, ax
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
