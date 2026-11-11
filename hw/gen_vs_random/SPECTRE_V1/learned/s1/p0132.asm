.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
lea rbx, qword ptr [rcx + rax]
and al, -54
cmp dil, dl
sub cl, dil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, cl
lea bx, qword ptr [rdx + rsi]
sub bl, -6
mov dil, bl
cmp dil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
