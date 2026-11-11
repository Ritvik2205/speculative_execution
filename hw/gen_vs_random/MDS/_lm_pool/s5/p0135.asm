.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 101
not dil
and dil, -62
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
btr bx, dx
or rdi, -11
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and al, al
test edx, -372470678
test eax, 1287331633
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
