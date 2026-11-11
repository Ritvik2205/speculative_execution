.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
xor ecx, 50
add cl, cl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, -21
jl .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, bl
lea rdi, qword ptr [rdx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
