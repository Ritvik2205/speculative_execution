.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
lea rax, qword ptr [rdi]
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
add sil, -61
add al, 56
jmp .bb_0.2
.bb_0.2:
sub cl, -49
js .bb_0.3
jmp .exit_0
.bb_0.3:
xor rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 35
sub cl, -49
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
sub bl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
