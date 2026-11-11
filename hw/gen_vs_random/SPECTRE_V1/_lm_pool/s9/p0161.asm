.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, dx
sbb edi, 70
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea ax, qword ptr [rdx + rbx + 96]
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
lea cx, qword ptr [rdx + rax]
jmp .bb_0.2
.bb_0.2:
cmovnp rdi, rbx
bswap rdx
sub si, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
