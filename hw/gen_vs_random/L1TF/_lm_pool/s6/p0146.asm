.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -57
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
test sil, dil
sbb eax, -403815802
jmp .bb_0.1
.bb_0.1:
xor ax, 0
add bl, al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 29
jmp .bb_0.2
.bb_0.2:
add dl, -52 # instrumentation
adc di, 92
and cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
