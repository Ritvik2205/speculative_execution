.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -18
test cl, -24
cmp sil, al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
sbb al, 104
sub cl, dl
test cl, -33
lea rax, qword ptr [rbx]
lea cx, qword ptr [rdi + rax + 31]
xor sil, bl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 46
or al, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
