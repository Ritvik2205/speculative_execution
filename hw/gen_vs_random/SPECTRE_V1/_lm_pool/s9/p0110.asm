.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
and si, 65
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jl .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
sub al, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
