.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
xor sil, 64
sbb al, sil
or al, -5
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmp bx, 90
sbb edi, 10
jmp .bb_0.2
.bb_0.2:
test sil, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
