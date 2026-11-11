.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
cmovns rdi, rdx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
sub al, dil
cmp rbx, 36
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
jl .bb_0.2
jmp .exit_0
.bb_0.2:
test al, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
