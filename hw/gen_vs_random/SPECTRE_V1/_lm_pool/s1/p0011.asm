.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
cmp ecx, 85
add al, -72
sbb ecx, 29
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnle rax, rcx
add sil, 2
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
sub dil, cl
lea rsi, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
