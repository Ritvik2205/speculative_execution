.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, dl
sub dil, 35
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
sbb cl, 12
xor al, 99
sbb dil, 16
jmp .bb_0.1
.bb_0.1:
dec dl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
mov cl, sil
add al, -44
test dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
