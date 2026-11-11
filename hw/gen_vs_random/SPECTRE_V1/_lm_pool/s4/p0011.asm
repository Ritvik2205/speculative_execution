.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 78
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sbb al, -14
cmp rbx, 22
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edi
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
and cl, cl
lea dx, qword ptr [rdx]
adc dil, 59
sbb al, sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 4
sbb al, -112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
