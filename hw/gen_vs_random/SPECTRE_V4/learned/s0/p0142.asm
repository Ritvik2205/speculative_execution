.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 124
sub al, 59
cmovz ecx, eax
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
sub al, -128
cmp dil, al
cmp edx, -95
btc rax, rbx
test edx, -38580719
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
