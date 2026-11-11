.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -71
test al, 34
lea rdi, qword ptr [rdx + rcx]
xor dl, 71
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
test dl, -7
sub cl, -47
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
