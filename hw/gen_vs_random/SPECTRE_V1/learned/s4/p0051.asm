.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
setz bl
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub rdx, 15
lea ecx, qword ptr [rbx]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
cmp dl, cl
add sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
