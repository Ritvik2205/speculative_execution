.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
mov dl, cl
mov dl, al
dec bl
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
sub al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
