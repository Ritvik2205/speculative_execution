.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ecx, edx
dec al
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
sub dx, cx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
or al, cl
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
add al, -72
add al, -109
sbb al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
