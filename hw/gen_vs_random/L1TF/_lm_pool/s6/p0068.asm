.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
xchg ecx, edi
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 53
sub al, bl
sbb al, -14
test dil, -126
jmp .bb_0.1
.bb_0.1:
test dil, -126
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor cl, sil
sbb dl, sil
sbb dl, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
