.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
sbb al, -23
sub dil, -39
add sil, -61
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 67
jmp .bb_0.1
.bb_0.1:
xor cx, 113
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and cl, cl
and ax, 7954
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
