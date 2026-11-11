.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 51
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
or cl, bl
add dil, cl
js .bb_0.2
jmp .exit_0
.bb_0.2:
and al, -54
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
