.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
mov dil, sil
add bl, dil
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rbx]
sub dil, al
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea dx, qword ptr [rbx]
test dl, -36
jl .bb_0.2
jmp .exit_0
.bb_0.2:
lea rbx, qword ptr [rax + rbx]
and ax, 2806
sbb al, 118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
