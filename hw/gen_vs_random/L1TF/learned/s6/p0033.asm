.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
or dil, bl
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
sbb bl, cl
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
lea rdi, qword ptr [rdx + rsi]
cmovnp bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
