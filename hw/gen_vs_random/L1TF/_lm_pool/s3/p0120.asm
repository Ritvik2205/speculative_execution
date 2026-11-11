.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 80
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx], 23
add sil, dil
test cl, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
sub al, bl
test sil, 29
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
