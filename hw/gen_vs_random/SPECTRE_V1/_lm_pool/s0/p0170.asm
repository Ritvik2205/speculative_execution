.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
cmp rdi, 69
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub sil, bl
sub al, -1
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
inc dl
and al, -23
jmp .bb_0.3
.bb_0.3:
imul rbx
add rax, 913062684
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
