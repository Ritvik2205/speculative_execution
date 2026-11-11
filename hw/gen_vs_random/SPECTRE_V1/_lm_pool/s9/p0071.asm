.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, edx
sbb dl, 127
test cl, -62
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 14
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and dil, -114
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sbb al, 66
mov al, sil
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
sub dl, bl
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
