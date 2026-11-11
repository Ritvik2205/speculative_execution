.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rax]
add bl, 68
add cl, -36
lea rax, qword ptr [rdx + rcx]
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or rax, 1362710293
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
lea rdi, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
