.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdi]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .exit_0
.bb_0.2:
or dil, dl
or ax, 18658
test al, 59
and bl, 87
sub di, si
xor cl, dl
and dl, -92
add al, -65
cmovnb ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
