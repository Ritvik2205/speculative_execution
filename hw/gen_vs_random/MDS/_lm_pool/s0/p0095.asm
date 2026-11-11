.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rax, 452940266
bts rdx, rbx
and rax, 1886208862
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
test cl, 0
bt eax, ebx
bt cx, si
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and ax, 29207
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and ax, -12519
xor al, 34
xor di, 93
and cl, -111
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
