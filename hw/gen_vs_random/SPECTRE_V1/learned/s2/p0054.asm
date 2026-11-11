.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
cmp cl, dil
sub sil, cl
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and cx, 26
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
