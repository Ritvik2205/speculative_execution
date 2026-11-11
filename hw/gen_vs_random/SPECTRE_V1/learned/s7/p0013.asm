.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 63
sbb al, 118
cmp rdi, 70
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 84
test cl, -62
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], si
lea si, qword ptr [rax]
cmovbe ecx, eax
xor si, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
