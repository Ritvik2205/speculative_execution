.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and sil, -55
cmp dil, -78
jmp .bb_0.1
.bb_0.1:
imul rbx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
test sil, 97
cmp di, 30
xor si, 63
lea ax, qword ptr [rdx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
