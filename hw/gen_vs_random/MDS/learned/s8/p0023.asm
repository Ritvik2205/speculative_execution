.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
xor cl, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
test bl, 65
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and edx, -44
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
xor cl, 15
jmp .bb_0.2
.bb_0.2:
cmovnp rsi, rbx
or edi, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
