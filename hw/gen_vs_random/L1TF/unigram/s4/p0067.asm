.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rcx, 18
sub dx, 34
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
cdq
and rsi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
add al, 74
add al, 93
jmp .bb_0.1
.bb_0.1:
not cx
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 95
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 72
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
inc rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
