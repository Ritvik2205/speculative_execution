.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
sub dil, cl
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
sub di, 86
sub bl, cl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
test bl, -8
movsx ax, dil
lea cx, qword ptr [rbx]
bswap rcx
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
