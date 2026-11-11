.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], dx
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
lea ax, qword ptr [rbx + rcx + 6]
sub sil, bl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
setp al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
test al, -75
lea eax, qword ptr [rdx]
add sil, cl
sub bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
