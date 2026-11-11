.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
sbb sil, cl
lea rax, qword ptr [rbx + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
jmp .bb_0.1
.bb_0.1:
test al, -32
test sil, dil
movsx esi, cl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 95
sub dl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
