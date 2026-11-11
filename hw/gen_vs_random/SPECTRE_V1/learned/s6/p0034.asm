.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
and sil, 11
jle .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, dl
sub al, bl
add bl, -95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
