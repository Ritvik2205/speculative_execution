.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -72
sub sil, dl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
dec bl
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
sub cl, dl
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
