.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
lea ebx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg bl, cl
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
cmp al, bl
sub bl, al
jns .bb_0.3
jmp .exit_0
.bb_0.3:
sub dx, -23
bt ax, dx
lea dx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
