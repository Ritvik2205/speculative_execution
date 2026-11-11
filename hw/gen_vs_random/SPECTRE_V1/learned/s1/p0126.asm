.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 20
sbb al, 49
lea di, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and al, dil
xor al, cl
sbb al, 66
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov cl, dil
jmp .bb_0.2
.bb_0.2:
test al, sil
test al, 40
mov sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
