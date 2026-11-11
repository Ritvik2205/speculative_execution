.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -55
and dil, -39
test bl, -14
jmp .bb_0.1
.bb_0.1:
or al, sil
or al, al
jmp .bb_0.2
.bb_0.2:
or al, -75
jmp .bb_0.3
.bb_0.3:
test dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
xor bl, dil
test rdx, 53
and dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
