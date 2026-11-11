.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
test dil, -126
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
test dil, -126
lea esi, qword ptr [rbx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
add al, 117
xor cl, 89
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
or al, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
