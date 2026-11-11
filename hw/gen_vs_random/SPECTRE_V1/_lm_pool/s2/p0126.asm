.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
add bl, 89 # instrumentation
sbb cl, bl
test rax, rbx
and cx, 77
sbb eax, 99727957
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
or si, 0b1000000000000000 # instrumentation
bsf bx, si
test ax, -32457
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
