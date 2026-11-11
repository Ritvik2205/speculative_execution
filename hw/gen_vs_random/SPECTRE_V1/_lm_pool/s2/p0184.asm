.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
sub dl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
sbb al, dil
and rdi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdi]
and bl, cl
and cl, cl
and al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
