.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
sbb al, 33
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
sub cl, -21
sub al, -66
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
setbe cl
jnbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 79
inc dil
cmp rax, 900122030
jns .bb_0.4
jmp .exit_0
.bb_0.4:
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
