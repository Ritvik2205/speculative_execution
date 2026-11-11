.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
add rsi, 66
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
jmp .bb_0.1
.bb_0.1:
lea ecx, qword ptr [rax]
jmp .bb_0.2
.bb_0.2:
sbb ax, bx
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 7
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
cmovno di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
