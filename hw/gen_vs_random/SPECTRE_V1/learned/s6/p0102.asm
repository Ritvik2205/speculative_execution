.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
test al, cl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
and sil, 111
cmp esi, 30
or rax, -3
adc cx, -30
jmp .bb_0.2
.bb_0.2:
lea rdi, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
