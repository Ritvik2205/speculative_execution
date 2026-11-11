.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
or dx, 27
add al, bl
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
lea bx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 16
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
