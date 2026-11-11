.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, dx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
btr si, cx
inc eax
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rcx
and cl, cl
jl .bb_0.2
jmp .exit_0
.bb_0.2:
add cl, cl
lea rdi, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
