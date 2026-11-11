.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
add al, -72
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
sub cl, dil
xchg al, cl
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
