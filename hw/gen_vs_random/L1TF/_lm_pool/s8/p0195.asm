.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and dil, -82
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 57
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
sbb al, bl
cmovbe eax, edx
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and cl, cl
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], -76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
