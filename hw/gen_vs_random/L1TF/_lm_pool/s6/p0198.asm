.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
bts ebx, 60
and rcx, 79
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb sil, dil
setnle al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
test bl, 45
jmp .bb_0.2
.bb_0.2:
lea rsi, qword ptr [rcx + rbx + 51]
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
