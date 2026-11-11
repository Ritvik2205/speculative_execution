.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, cl
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
test dil, -126
xor rcx, 83
test eax, 645518295
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -51
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
