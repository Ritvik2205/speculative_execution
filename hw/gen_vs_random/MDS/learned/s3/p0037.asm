.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -78
and sil, -9
or bl, al
test al, cl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
test cl, bl
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
xor dil, cl
or al, al
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
or eax, 359647041
test al, -81
jmp .bb_0.1
.bb_0.1:
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
