.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -37
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
sub cl, 86
and eax, -409673666
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 102
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
