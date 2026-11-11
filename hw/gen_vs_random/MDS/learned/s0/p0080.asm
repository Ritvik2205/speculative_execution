.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 17
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
or al, bl
xor dil, sil
jmp .bb_0.1
.bb_0.1:
test sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
