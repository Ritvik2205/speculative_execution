.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ebx, 29
lea rcx, qword ptr [rbx + rax]
sub cl, 32
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 3
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
sbb eax, eax
and rcx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
lea ax, qword ptr [rdx + rax]
cmovp si, di
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edx
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
