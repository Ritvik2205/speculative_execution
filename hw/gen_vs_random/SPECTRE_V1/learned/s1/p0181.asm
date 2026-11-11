.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -47
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
and bl, -43
add al, -109
sbb al, bl
sbb al, cl
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
xor cl, 78
sub rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
