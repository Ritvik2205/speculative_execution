.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
cmp bl, al
sbb al, -107
and dl, bl
test dl, -36
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
lea ecx, qword ptr [rbx + rcx + 13259]
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
