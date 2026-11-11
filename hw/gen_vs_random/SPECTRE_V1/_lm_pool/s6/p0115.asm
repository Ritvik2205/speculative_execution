.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
cmp eax, 100
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
or al, 19
jns .bb_0.3
jmp .bb_0.4
.bb_0.3:
xor dl, cl
jb .bb_0.4
jmp .bb_0.5
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdi], 86
js .bb_0.5
jmp .exit_0
.bb_0.5:
sub dil, -32
lea di, qword ptr [rdx + rsi + 62]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
