.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -24
test al, 40
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
lea ax, qword ptr [rcx]
lea rax, qword ptr [rdi + rbx + 41]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi]
js .bb_0.2
jmp .exit_0
.bb_0.2:
add sil, cl
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
